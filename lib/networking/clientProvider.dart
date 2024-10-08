import 'dart:async';

import 'package:artemis/artemis.dart';
import 'package:bingo/api/api.dart';
import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';

class GameClient extends InheritedWidget {
  final ArtemisClient artemisClient;

  final LocalStorage localStorage;

  final String playerId;

  late final String initialPlayerName =
      localStorage.getItem('player_name') ?? "";

  late final TextEditingController playerName =
      TextEditingController(text: initialPlayerName);

  StreamController<GraphQLResponse<GameMessages$Subscription>> stream =
      StreamController.broadcast();

  GameClient(
      {Key? key,
      required this.child,
      required this.artemisClient,
      required this.localStorage,
      required this.playerId})
      : super(key: key, child: child);
  final Widget child;

  static GameClient? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GameClient>();
  }

  @override
  bool updateShouldNotify(GameClient oldWidget) {
    return true;
  }

  bool isPhone(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }

  Future<String> createRoom() async {
    if (playerName.text.isEmpty) {
      throw "Name empty";
    }
    print("Create room player $playerId");
    localStorage.setItem('player_name', playerName.text);

    var createLobby = CreateLobbyMutation(
      variables: CreateLobbyArguments(
        playerId: playerId,
        playerName: playerName.text,
      ),
    );
    var result = await artemisClient.execute(createLobby);
    var roomId = result.data?.createLobby;
    if (roomId == null) {
      throw "Can not create Room";
    } else {
      return roomId;
    }
  }

  Future<String> joinRoom(String roomId) async {
    if (playerName.text.isEmpty) {
      throw "Name empty";
    }
    var createLobby = JoinLobbyMutation(
      variables: JoinLobbyArguments(
        playerId: playerId,
        playerName: playerName.text,
        roomId: roomId,
      ),
    );
    print("Joining Room $roomId player $playerId");
    localStorage.setItem('player_name', playerName.text);
    var result = await artemisClient.execute(createLobby);
    print("Inside here!");
    if (result.data?.joinLobby == null) {
      print("Result $result Data ${result.data} Errors ${result.errors}");
      throw "Cannot join Lobby";
    } else {
      return roomId;
    }
  }

  Future disconnect(String roomId) async {
    var disc = await artemisClient.execute(
      DisconnectMutation(
        variables: DisconnectArguments(playerId: playerId, roomId: roomId),
      ),
    );
  }

  Future kick(String roomId, String playerId) async {
    await artemisClient.execute(
      DisconnectMutation(
        variables: DisconnectArguments(playerId: playerId, roomId: roomId),
      ),
    );
  }

  Future<Stream<GraphQLResponse<GameMessages$Subscription>>> connect(
      String roomId) async {
    if (playerName.text.isEmpty) {
      throw "Name empty";
    }

    print("Connect to room $roomId playerId $playerId");
    var streamData = artemisClient.stream(
      GameMessagesSubscription(
        variables: GameMessagesArguments(
          roomId: roomId,
          playerId: playerId,
        ),
      ),
    );
    var completer =
        Completer<Stream<GraphQLResponse<GameMessages$Subscription>>>();
    bool isFirst = true;
    streamData.listen((event) async {
      if (isFirst) {
        isFirst = false;
        if (event.data != null) {
          completer.complete(stream.stream);
          await Future.delayed(Duration(milliseconds: 100));
        } else {
          completer.completeError("Cant connect");
          debugPrint("Event $event Data ${event.data} Error ${event.errors}");
        }
      }
      stream.add(event);
    }).onDone(() {
      stream.close();
    });
    return completer.future;
  }
}

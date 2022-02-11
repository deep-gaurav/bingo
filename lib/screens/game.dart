import 'package:bingo/api/api.dart';
import 'package:bingo/networking/clientProvider.dart';
import 'package:bingo/screens/bluff/bluff_board.dart';
import 'package:bingo/screens/board_builder.dart';
import 'package:bingo/screens/boxes.dart/boxes_board.dart';
import 'package:bingo/screens/game_board.dart';
import 'package:bingo/screens/players.dart';
import 'package:bingo/widgets/chat.dart';
import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  final RoomFieldsMixin room;
  Game({required this.room, Key? key}) : super(key: key);

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= 768;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            "Room ${this.widget.room.id}",
            style: Theme.of(context).textTheme.headline6,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: ChatWidget(
        key: Key('chat'),
        roomId: widget.room.id,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Flex(
                  direction: isScreenWide ? Axis.horizontal : Axis.vertical,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Players(
                        players: widget.room.players,
                        ranks: (widget.room.state
                                as RoomFieldsMixin$RoomState$GameData)
                            .leaderboard,
                        onKickPlayer: (playerId) async {
                          GameClient.of(context)
                              ?.kick(widget.room.id, playerId);
                        },
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: buildBoard(
                        context,
                        GameClient.of(context)!,
                        widget.room.state as RoomFieldsMixin$RoomState$GameData,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBoard(BuildContext context, GameClient gameClient,
      RoomFieldsMixin$RoomState$GameData roomState) {
    if (roomState.game is RoomFieldsMixin$RoomState$GameData$Game$Bingo) {
      return buildBingoBoard(context, gameClient, roomState);
    } else if (roomState.game
        is RoomFieldsMixin$RoomState$GameData$Game$Boxes) {
      var data =
          (roomState.game as RoomFieldsMixin$RoomState$GameData$Game$Boxes);
      var turnPlayer = widget.room.players.firstWhere((element) =>
          (element as RoomFieldsMixin$CommonPlayer$GamePlayer).player.id ==
          data.turn);
      return BoxesBoard(
        data: data,
        roomId: widget.room.id,
        turnPlayer: turnPlayer as RoomFieldsMixin$CommonPlayer$GamePlayer,
        gameData: roomState,
      );
    } else if (roomState.game
        is RoomFieldsMixin$RoomState$GameData$Game$Bluff) {
      var data =
          (roomState.game as RoomFieldsMixin$RoomState$GameData$Game$Bluff);
      var turnPlayer = widget.room.players.firstWhere((element) =>
          (element as RoomFieldsMixin$CommonPlayer$GamePlayer).player.id ==
          data.turn);
      return BluffBoard(
        data: data,
        roomId: widget.room.id,
        turnPlayer: turnPlayer as RoomFieldsMixin$CommonPlayer$GamePlayer,
        gameData: roomState,
      );
    } else {
      return Container();
    }
  }

  buildBingoBoard(BuildContext context, GameClient gameClient,
      RoomFieldsMixin$RoomState$GameData roomState) {
    if ((roomState.game as RoomFieldsMixin$RoomState$GameData$Game$Bingo)
            .gameState
        is RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$BoardCreation) {
      return BoardBuilder(
        onReadyBoard: (board) async {
          print("Ready board $board ${gameClient.playerId}");

          var response = await gameClient.artemisClient.execute(
            BingoReadyBoardQuery(
              variables: BingoReadyBoardArguments(
                playerId: gameClient.playerId,
                roomId: widget.room.id,
                board: board,
              ),
            ),
          );
          print("Board ready $response ${response.data} ${response.errors}");
        },
        boardSize:
            (roomState.game as RoomFieldsMixin$RoomState$GameData$Game$Bingo)
                .boardSize,
      );
    } else {
      var gameRuningState = (roomState.game
                  as RoomFieldsMixin$RoomState$GameData$Game$Bingo)
              .gameState
          as RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunning;

      var player = widget.room.players.firstWhere((element) =>
              (element as RoomFieldsMixin$CommonPlayer$GamePlayer).player.id ==
              GameClient.of(context)?.playerId)
          as RoomFieldsMixin$CommonPlayer$GamePlayer;

      var turnPlayer = widget.room.players.firstWhere((element) =>
          (element as RoomFieldsMixin$CommonPlayer$GamePlayer).player.id ==
          gameRuningState.turn) as RoomFieldsMixin$CommonPlayer$GamePlayer;

      return GameBoard(
        selectedCells: gameRuningState.selectedNumbers,
        board: (player.data
                as RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData)
            .board!,
        turnPlayer: turnPlayer,
        roomId: widget.room.id,
      );
    }
  }
}

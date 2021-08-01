// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'api.graphql.g.dart';

mixin PlayerFieldsMixin {
  late String id;
  late String name;
}
mixin RoomFieldsMixin {
  late String id;
  late List<RoomFieldsMixin$CommonPlayer> players;
  late RoomFieldsMixin$RoomState state;
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$CommonPlayer extends JsonSerializable
    with EquatableMixin {
  RoomFieldsMixin$CommonPlayer();

  factory RoomFieldsMixin$CommonPlayer.fromJson(Map<String, dynamic> json) =>
      _$RoomFieldsMixin$CommonPlayerFromJson(json);

  late bool isConnected;

  @override
  List<Object?> get props => [isConnected];
  @override
  Map<String, dynamic> toJson() => _$RoomFieldsMixin$CommonPlayerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$Player
    extends JsonSerializable with EquatableMixin, PlayerFieldsMixin {
  RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$Player();

  factory RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$Player.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$PlayerFromJson(json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$PlayerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer extends JsonSerializable
    with EquatableMixin {
  RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer();

  factory RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$LobbyData$LobbyPlayerFromJson(json);

  late RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$Player player;

  @override
  List<Object?> get props => [player];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$LobbyData$LobbyPlayerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$LobbyData extends RoomFieldsMixin$RoomState
    with EquatableMixin {
  RoomFieldsMixin$RoomState$LobbyData();

  factory RoomFieldsMixin$RoomState$LobbyData.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$LobbyDataFromJson(json);

  late List<RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer> players;

  @override
  List<Object?> get props => [players];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$LobbyDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$GamePlayer$Player
    extends JsonSerializable with EquatableMixin, PlayerFieldsMixin {
  RoomFieldsMixin$RoomState$GameData$GamePlayer$Player();

  factory RoomFieldsMixin$RoomState$GameData$GamePlayer$Player.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerFromJson(json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$GamePlayer$Board
    extends JsonSerializable with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$GamePlayer$Board();

  factory RoomFieldsMixin$RoomState$GameData$GamePlayer$Board.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$GamePlayer$BoardFromJson(json);

  late List<List<int>> numbers;

  @override
  List<Object?> get props => [numbers];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$GamePlayer$BoardToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$GamePlayer extends JsonSerializable
    with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$GamePlayer();

  factory RoomFieldsMixin$RoomState$GameData$GamePlayer.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$GamePlayerFromJson(json);

  late RoomFieldsMixin$RoomState$GameData$GamePlayer$Player player;

  RoomFieldsMixin$RoomState$GameData$GamePlayer$Board? board;

  @override
  List<Object?> get props => [player, board];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$GamePlayerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$GameState$BoardCreation
    extends RoomFieldsMixin$RoomState$GameData$GameState with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$GameState$BoardCreation();

  factory RoomFieldsMixin$RoomState$GameData$GameState$BoardCreation.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$GameState$BoardCreationFromJson(
          json);

  late List<String> ready;

  @override
  List<Object?> get props => [ready];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$GameState$BoardCreationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$GameState$GameRunning$SelectedCell
    extends JsonSerializable with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$GameState$GameRunning$SelectedCell();

  factory RoomFieldsMixin$RoomState$GameData$GameState$GameRunning$SelectedCell.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$GameState$GameRunning$SelectedCellFromJson(
          json);

  late String selectedBy;

  late int cellValue;

  @override
  List<Object?> get props => [selectedBy, cellValue];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$GameState$GameRunning$SelectedCellToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$GameState$GameRunning
    extends RoomFieldsMixin$RoomState$GameData$GameState with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$GameState$GameRunning();

  factory RoomFieldsMixin$RoomState$GameData$GameState$GameRunning.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameData$GameState$GameRunningFromJson(json);

  late String turn;

  late List<
          RoomFieldsMixin$RoomState$GameData$GameState$GameRunning$SelectedCell>
      selectedNumbers;

  @override
  List<Object?> get props => [turn, selectedNumbers];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameData$GameState$GameRunningToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData$GameState extends JsonSerializable
    with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData$GameState();

  factory RoomFieldsMixin$RoomState$GameData$GameState.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'BoardCreation':
        return RoomFieldsMixin$RoomState$GameData$GameState$BoardCreation
            .fromJson(json);
      case r'GameRunning':
        return RoomFieldsMixin$RoomState$GameData$GameState$GameRunning
            .fromJson(json);
      default:
    }
    return _$RoomFieldsMixin$RoomState$GameData$GameStateFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'BoardCreation':
        return (this
                as RoomFieldsMixin$RoomState$GameData$GameState$BoardCreation)
            .toJson();
      case r'GameRunning':
        return (this
                as RoomFieldsMixin$RoomState$GameData$GameState$GameRunning)
            .toJson();
      default:
    }
    return _$RoomFieldsMixin$RoomState$GameData$GameStateToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState$GameData extends RoomFieldsMixin$RoomState
    with EquatableMixin {
  RoomFieldsMixin$RoomState$GameData();

  factory RoomFieldsMixin$RoomState$GameData.fromJson(
          Map<String, dynamic> json) =>
      _$RoomFieldsMixin$RoomState$GameDataFromJson(json);

  late List<RoomFieldsMixin$RoomState$GameData$GamePlayer> players;

  late int boardSize;

  late RoomFieldsMixin$RoomState$GameData$GameState gameState;

  @override
  List<Object?> get props => [players, boardSize, gameState];
  @override
  Map<String, dynamic> toJson() =>
      _$RoomFieldsMixin$RoomState$GameDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$RoomState extends JsonSerializable with EquatableMixin {
  RoomFieldsMixin$RoomState();

  factory RoomFieldsMixin$RoomState.fromJson(Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'LobbyData':
        return RoomFieldsMixin$RoomState$LobbyData.fromJson(json);
      case r'GameData':
        return RoomFieldsMixin$RoomState$GameData.fromJson(json);
      default:
    }
    return _$RoomFieldsMixin$RoomStateFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'LobbyData':
        return (this as RoomFieldsMixin$RoomState$LobbyData).toJson();
      case r'GameData':
        return (this as RoomFieldsMixin$RoomState$GameData).toJson();
      default:
    }
    return _$RoomFieldsMixin$RoomStateToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$PlayerJoined$Player
    extends JsonSerializable with EquatableMixin, PlayerFieldsMixin {
  GameMessages$Subscription$ServerResponse$PlayerJoined$Player();

  factory GameMessages$Subscription$ServerResponse$PlayerJoined$Player.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$PlayerJoined$PlayerFromJson(
          json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$PlayerJoined$PlayerToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$PlayerJoined$Room
    extends JsonSerializable with EquatableMixin, RoomFieldsMixin {
  GameMessages$Subscription$ServerResponse$PlayerJoined$Room();

  factory GameMessages$Subscription$ServerResponse$PlayerJoined$Room.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$PlayerJoined$RoomFromJson(
          json);

  @override
  List<Object?> get props => [id, players, state];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$PlayerJoined$RoomToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$PlayerJoined
    extends GameMessages$Subscription$ServerResponse with EquatableMixin {
  GameMessages$Subscription$ServerResponse$PlayerJoined();

  factory GameMessages$Subscription$ServerResponse$PlayerJoined.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$PlayerJoinedFromJson(json);

  late GameMessages$Subscription$ServerResponse$PlayerJoined$Player player;

  late GameMessages$Subscription$ServerResponse$PlayerJoined$Room room;

  @override
  List<Object?> get props => [player, room];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$PlayerJoinedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$PlayerConnected$Player
    extends JsonSerializable with EquatableMixin, PlayerFieldsMixin {
  GameMessages$Subscription$ServerResponse$PlayerConnected$Player();

  factory GameMessages$Subscription$ServerResponse$PlayerConnected$Player.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$PlayerConnected$PlayerFromJson(
          json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$PlayerConnected$PlayerToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$PlayerConnected$Room
    extends JsonSerializable with EquatableMixin, RoomFieldsMixin {
  GameMessages$Subscription$ServerResponse$PlayerConnected$Room();

  factory GameMessages$Subscription$ServerResponse$PlayerConnected$Room.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$PlayerConnected$RoomFromJson(
          json);

  @override
  List<Object?> get props => [id, players, state];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$PlayerConnected$RoomToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$PlayerConnected
    extends GameMessages$Subscription$ServerResponse with EquatableMixin {
  GameMessages$Subscription$ServerResponse$PlayerConnected();

  factory GameMessages$Subscription$ServerResponse$PlayerConnected.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$PlayerConnectedFromJson(json);

  late GameMessages$Subscription$ServerResponse$PlayerConnected$Player player;

  late GameMessages$Subscription$ServerResponse$PlayerConnected$Room room;

  @override
  List<Object?> get props => [player, room];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$PlayerConnectedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$PlayerLeft$Player
    extends JsonSerializable with EquatableMixin, PlayerFieldsMixin {
  GameMessages$Subscription$ServerResponse$PlayerLeft$Player();

  factory GameMessages$Subscription$ServerResponse$PlayerLeft$Player.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$PlayerLeft$PlayerFromJson(
          json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$PlayerLeft$PlayerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$PlayerLeft$Room
    extends JsonSerializable with EquatableMixin, RoomFieldsMixin {
  GameMessages$Subscription$ServerResponse$PlayerLeft$Room();

  factory GameMessages$Subscription$ServerResponse$PlayerLeft$Room.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$PlayerLeft$RoomFromJson(json);

  @override
  List<Object?> get props => [id, players, state];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$PlayerLeft$RoomToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$PlayerLeft
    extends GameMessages$Subscription$ServerResponse with EquatableMixin {
  GameMessages$Subscription$ServerResponse$PlayerLeft();

  factory GameMessages$Subscription$ServerResponse$PlayerLeft.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$PlayerLeftFromJson(json);

  late GameMessages$Subscription$ServerResponse$PlayerLeft$Player player;

  late GameMessages$Subscription$ServerResponse$PlayerLeft$Room room;

  @override
  List<Object?> get props => [player, room];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$PlayerLeftToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$GameMessage$Room
    extends JsonSerializable with EquatableMixin, RoomFieldsMixin {
  GameMessages$Subscription$ServerResponse$GameMessage$Room();

  factory GameMessages$Subscription$ServerResponse$GameMessage$Room.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$RoomFromJson(json);

  @override
  List<Object?> get props => [id, players, state];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$RoomToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$BoardCreation
    extends GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState
    with EquatableMixin {
  GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$BoardCreation();

  factory GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$BoardCreation.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$BoardCreationFromJson(
          json);

  late List<String> ready;

  @override
  List<Object?> get props => [ready];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$BoardCreationToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$GameRunning
    extends GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState
    with EquatableMixin {
  GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$GameRunning();

  factory GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$GameRunning.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$GameRunningFromJson(
          json);

  late String turn;

  @override
  List<Object?> get props => [turn];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$GameRunningToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState
    extends JsonSerializable with EquatableMixin {
  GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState();

  factory GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'BoardCreation':
        return GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$BoardCreation
            .fromJson(json);
      case r'GameRunning':
        return GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$GameRunning
            .fromJson(json);
      default:
    }
    return _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameStateFromJson(
        json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'BoardCreation':
        return (this
                as GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$BoardCreation)
            .toJson();
      case r'GameRunning':
        return (this
                as GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState$GameRunning)
            .toJson();
      default:
    }
    return _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameStateToJson(
        this);
  }
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted
    extends GameMessages$Subscription$ServerResponse$GameMessage$GameEvents
    with EquatableMixin {
  GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted();

  factory GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStartedFromJson(
          json);

  late GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameState
      gameState;

  @override
  List<Object?> get props => [gameState];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStartedToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$Room
    extends JsonSerializable with EquatableMixin, RoomFieldsMixin {
  GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$Room();

  factory GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$Room.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$RoomFromJson(
          json);

  @override
  List<Object?> get props => [id, players, state];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$RoomToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate
    extends GameMessages$Subscription$ServerResponse$GameMessage$GameEvents
    with EquatableMixin {
  GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate();

  factory GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdateFromJson(
          json);

  late GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$Room
      room;

  @override
  List<Object?> get props => [room];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$GameMessage$GameEvents
    extends JsonSerializable with EquatableMixin {
  GameMessages$Subscription$ServerResponse$GameMessage$GameEvents();

  factory GameMessages$Subscription$ServerResponse$GameMessage$GameEvents.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'GameStarted':
        return GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted
            .fromJson(json);
      case r'RoomUpdate':
        return GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate
            .fromJson(json);
      default:
    }
    return _$GameMessages$Subscription$ServerResponse$GameMessage$GameEventsFromJson(
        json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'GameStarted':
        return (this
                as GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted)
            .toJson();
      case r'RoomUpdate':
        return (this
                as GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate)
            .toJson();
      default:
    }
    return _$GameMessages$Subscription$ServerResponse$GameMessage$GameEventsToJson(
        this);
  }
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse$GameMessage
    extends GameMessages$Subscription$ServerResponse with EquatableMixin {
  GameMessages$Subscription$ServerResponse$GameMessage();

  factory GameMessages$Subscription$ServerResponse$GameMessage.fromJson(
          Map<String, dynamic> json) =>
      _$GameMessages$Subscription$ServerResponse$GameMessageFromJson(json);

  late GameMessages$Subscription$ServerResponse$GameMessage$Room room;

  late GameMessages$Subscription$ServerResponse$GameMessage$GameEvents event;

  @override
  List<Object?> get props => [room, event];
  @override
  Map<String, dynamic> toJson() =>
      _$GameMessages$Subscription$ServerResponse$GameMessageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription$ServerResponse extends JsonSerializable
    with EquatableMixin {
  GameMessages$Subscription$ServerResponse();

  factory GameMessages$Subscription$ServerResponse.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'PlayerJoined':
        return GameMessages$Subscription$ServerResponse$PlayerJoined.fromJson(
            json);
      case r'PlayerConnected':
        return GameMessages$Subscription$ServerResponse$PlayerConnected
            .fromJson(json);
      case r'PlayerLeft':
        return GameMessages$Subscription$ServerResponse$PlayerLeft.fromJson(
            json);
      case r'GameMessage':
        return GameMessages$Subscription$ServerResponse$GameMessage.fromJson(
            json);
      default:
    }
    return _$GameMessages$Subscription$ServerResponseFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'PlayerJoined':
        return (this as GameMessages$Subscription$ServerResponse$PlayerJoined)
            .toJson();
      case r'PlayerConnected':
        return (this
                as GameMessages$Subscription$ServerResponse$PlayerConnected)
            .toJson();
      case r'PlayerLeft':
        return (this as GameMessages$Subscription$ServerResponse$PlayerLeft)
            .toJson();
      case r'GameMessage':
        return (this as GameMessages$Subscription$ServerResponse$GameMessage)
            .toJson();
      default:
    }
    return _$GameMessages$Subscription$ServerResponseToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class GameMessages$Subscription extends JsonSerializable with EquatableMixin {
  GameMessages$Subscription();

  factory GameMessages$Subscription.fromJson(Map<String, dynamic> json) =>
      _$GameMessages$SubscriptionFromJson(json);

  late GameMessages$Subscription$ServerResponse serverMessages;

  @override
  List<Object?> get props => [serverMessages];
  @override
  Map<String, dynamic> toJson() => _$GameMessages$SubscriptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateLobby$MutationRoot extends JsonSerializable with EquatableMixin {
  CreateLobby$MutationRoot();

  factory CreateLobby$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$CreateLobby$MutationRootFromJson(json);

  late String createLobby;

  @override
  List<Object?> get props => [createLobby];
  @override
  Map<String, dynamic> toJson() => _$CreateLobby$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class JoinLobby$MutationRoot extends JsonSerializable with EquatableMixin {
  JoinLobby$MutationRoot();

  factory JoinLobby$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$JoinLobby$MutationRootFromJson(json);

  late String joinLobby;

  @override
  List<Object?> get props => [joinLobby];
  @override
  Map<String, dynamic> toJson() => _$JoinLobby$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GameMessagesArguments extends JsonSerializable with EquatableMixin {
  GameMessagesArguments({this.roomId, this.playerId});

  @override
  factory GameMessagesArguments.fromJson(Map<String, dynamic> json) =>
      _$GameMessagesArgumentsFromJson(json);

  final String? roomId;

  final String? playerId;

  @override
  List<Object?> get props => [roomId, playerId];
  @override
  Map<String, dynamic> toJson() => _$GameMessagesArgumentsToJson(this);
}

final GAME_MESSAGES_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  FragmentDefinitionNode(
      name: NameNode(value: 'playerFields'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'Player'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'roomFields'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'Room'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'players'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'isConnected'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'state'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'LobbyData'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'players'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'player'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FragmentSpreadNode(
                                    name: NameNode(value: 'playerFields'),
                                    directives: [])
                              ]))
                        ]))
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'GameData'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'players'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'player'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FragmentSpreadNode(
                                    name: NameNode(value: 'playerFields'),
                                    directives: [])
                              ])),
                          FieldNode(
                              name: NameNode(value: 'board'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'numbers'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ]))
                        ])),
                    FieldNode(
                        name: NameNode(value: 'boardSize'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'gameState'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          InlineFragmentNode(
                              typeCondition: TypeConditionNode(
                                  on: NamedTypeNode(
                                      name: NameNode(value: 'BoardCreation'),
                                      isNonNull: false)),
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'ready'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          InlineFragmentNode(
                              typeCondition: TypeConditionNode(
                                  on: NamedTypeNode(
                                      name: NameNode(value: 'GameRunning'),
                                      isNonNull: false)),
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'turn'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'selectedNumbers'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'selectedBy'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'cellValue'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ]))
                              ]))
                        ]))
                  ]))
            ]))
      ])),
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'gameMessages'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'roomId')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'playerId')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'serverMessages'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'roomId'),
                  value: VariableNode(name: NameNode(value: 'roomId'))),
              ArgumentNode(
                  name: NameNode(value: 'playerId'),
                  value: VariableNode(name: NameNode(value: 'playerId')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'PlayerJoined'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'player'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'playerFields'),
                              directives: [])
                        ])),
                    FieldNode(
                        name: NameNode(value: 'room'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'roomFields'),
                              directives: [])
                        ]))
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'PlayerConnected'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'player'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'playerFields'),
                              directives: [])
                        ])),
                    FieldNode(
                        name: NameNode(value: 'room'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'roomFields'),
                              directives: [])
                        ]))
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'PlayerLeft'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'player'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'playerFields'),
                              directives: [])
                        ])),
                    FieldNode(
                        name: NameNode(value: 'room'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'roomFields'),
                              directives: [])
                        ]))
                  ])),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'GameMessage'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'room'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'roomFields'),
                              directives: [])
                        ])),
                    FieldNode(
                        name: NameNode(value: 'event'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          InlineFragmentNode(
                              typeCondition: TypeConditionNode(
                                  on: NamedTypeNode(
                                      name: NameNode(value: 'GameStarted'),
                                      isNonNull: false)),
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'gameState'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      InlineFragmentNode(
                                          typeCondition: TypeConditionNode(
                                              on: NamedTypeNode(
                                                  name: NameNode(
                                                      value: 'BoardCreation'),
                                                  isNonNull: false)),
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(value: 'ready'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ])),
                                      InlineFragmentNode(
                                          typeCondition: TypeConditionNode(
                                              on: NamedTypeNode(
                                                  name: NameNode(
                                                      value: 'GameRunning'),
                                                  isNonNull: false)),
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(value: 'turn'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ]))
                                    ]))
                              ])),
                          InlineFragmentNode(
                              typeCondition: TypeConditionNode(
                                  on: NamedTypeNode(
                                      name: NameNode(value: 'RoomUpdate'),
                                      isNonNull: false)),
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'room'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FragmentSpreadNode(
                                          name: NameNode(value: 'roomFields'),
                                          directives: [])
                                    ]))
                              ]))
                        ]))
                  ]))
            ]))
      ]))
]);

class GameMessagesSubscription
    extends GraphQLQuery<GameMessages$Subscription, GameMessagesArguments> {
  GameMessagesSubscription({required this.variables});

  @override
  final DocumentNode document = GAME_MESSAGES_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName = 'gameMessages';

  @override
  final GameMessagesArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GameMessages$Subscription parse(Map<String, dynamic> json) =>
      GameMessages$Subscription.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateLobbyArguments extends JsonSerializable with EquatableMixin {
  CreateLobbyArguments({this.playerId, this.playerName});

  @override
  factory CreateLobbyArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateLobbyArgumentsFromJson(json);

  final String? playerId;

  final String? playerName;

  @override
  List<Object?> get props => [playerId, playerName];
  @override
  Map<String, dynamic> toJson() => _$CreateLobbyArgumentsToJson(this);
}

final CREATE_LOBBY_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createLobby'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'playerId')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'playerName')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'createLobby'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'playerId'),
                  value: VariableNode(name: NameNode(value: 'playerId'))),
              ArgumentNode(
                  name: NameNode(value: 'playerName'),
                  value: VariableNode(name: NameNode(value: 'playerName')))
            ],
            directives: [],
            selectionSet: null)
      ]))
]);

class CreateLobbyMutation
    extends GraphQLQuery<CreateLobby$MutationRoot, CreateLobbyArguments> {
  CreateLobbyMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_LOBBY_MUTATION_DOCUMENT;

  @override
  final String operationName = 'createLobby';

  @override
  final CreateLobbyArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateLobby$MutationRoot parse(Map<String, dynamic> json) =>
      CreateLobby$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class JoinLobbyArguments extends JsonSerializable with EquatableMixin {
  JoinLobbyArguments({this.playerId, this.playerName, this.roomId});

  @override
  factory JoinLobbyArguments.fromJson(Map<String, dynamic> json) =>
      _$JoinLobbyArgumentsFromJson(json);

  final String? playerId;

  final String? playerName;

  final String? roomId;

  @override
  List<Object?> get props => [playerId, playerName, roomId];
  @override
  Map<String, dynamic> toJson() => _$JoinLobbyArgumentsToJson(this);
}

final JOIN_LOBBY_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'joinLobby'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'playerId')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'playerName')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'roomId')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'joinLobby'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'playerId'),
                  value: VariableNode(name: NameNode(value: 'playerId'))),
              ArgumentNode(
                  name: NameNode(value: 'playerName'),
                  value: VariableNode(name: NameNode(value: 'playerName'))),
              ArgumentNode(
                  name: NameNode(value: 'roomId'),
                  value: VariableNode(name: NameNode(value: 'roomId')))
            ],
            directives: [],
            selectionSet: null)
      ]))
]);

class JoinLobbyMutation
    extends GraphQLQuery<JoinLobby$MutationRoot, JoinLobbyArguments> {
  JoinLobbyMutation({required this.variables});

  @override
  final DocumentNode document = JOIN_LOBBY_MUTATION_DOCUMENT;

  @override
  final String operationName = 'joinLobby';

  @override
  final JoinLobbyArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  JoinLobby$MutationRoot parse(Map<String, dynamic> json) =>
      JoinLobby$MutationRoot.fromJson(json);
}

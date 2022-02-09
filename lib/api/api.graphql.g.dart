// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateLobby$MutationRoot _$CreateLobby$MutationRootFromJson(
    Map<String, dynamic> json) {
  return CreateLobby$MutationRoot()
    ..createLobby = json['createLobby'] as String;
}

Map<String, dynamic> _$CreateLobby$MutationRootToJson(
        CreateLobby$MutationRoot instance) =>
    <String, dynamic>{
      'createLobby': instance.createLobby,
    };

Disconnect$MutationRoot _$Disconnect$MutationRootFromJson(
    Map<String, dynamic> json) {
  return Disconnect$MutationRoot()..disconnect = json['disconnect'] as String;
}

Map<String, dynamic> _$Disconnect$MutationRootToJson(
        Disconnect$MutationRoot instance) =>
    <String, dynamic>{
      'disconnect': instance.disconnect,
    };

Ping$QueryRoot _$Ping$QueryRootFromJson(Map<String, dynamic> json) {
  return Ping$QueryRoot()..ping = json['ping'] as String;
}

Map<String, dynamic> _$Ping$QueryRootToJson(Ping$QueryRoot instance) =>
    <String, dynamic>{
      'ping': instance.ping,
    };

BingoStartGame$QueryRoot$GameInputs$BingoInputs
    _$BingoStartGame$QueryRoot$GameInputs$BingoInputsFromJson(
        Map<String, dynamic> json) {
  return BingoStartGame$QueryRoot$GameInputs$BingoInputs()
    ..startGame = json['startGame'] as bool;
}

Map<String, dynamic> _$BingoStartGame$QueryRoot$GameInputs$BingoInputsToJson(
        BingoStartGame$QueryRoot$GameInputs$BingoInputs instance) =>
    <String, dynamic>{
      'startGame': instance.startGame,
    };

BingoStartGame$QueryRoot$GameInputs
    _$BingoStartGame$QueryRoot$GameInputsFromJson(Map<String, dynamic> json) {
  return BingoStartGame$QueryRoot$GameInputs()
    ..bingoInputs = BingoStartGame$QueryRoot$GameInputs$BingoInputs.fromJson(
        json['bingoInputs'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BingoStartGame$QueryRoot$GameInputsToJson(
        BingoStartGame$QueryRoot$GameInputs instance) =>
    <String, dynamic>{
      'bingoInputs': instance.bingoInputs.toJson(),
    };

BingoStartGame$QueryRoot _$BingoStartGame$QueryRootFromJson(
    Map<String, dynamic> json) {
  return BingoStartGame$QueryRoot()
    ..gameEvent = BingoStartGame$QueryRoot$GameInputs.fromJson(
        json['gameEvent'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BingoStartGame$QueryRootToJson(
        BingoStartGame$QueryRoot instance) =>
    <String, dynamic>{
      'gameEvent': instance.gameEvent.toJson(),
    };

BingoReadyBoard$QueryRoot$GameInputs$BingoInputs
    _$BingoReadyBoard$QueryRoot$GameInputs$BingoInputsFromJson(
        Map<String, dynamic> json) {
  return BingoReadyBoard$QueryRoot$GameInputs$BingoInputs()
    ..readyBoard = json['readyBoard'] as bool;
}

Map<String, dynamic> _$BingoReadyBoard$QueryRoot$GameInputs$BingoInputsToJson(
        BingoReadyBoard$QueryRoot$GameInputs$BingoInputs instance) =>
    <String, dynamic>{
      'readyBoard': instance.readyBoard,
    };

BingoReadyBoard$QueryRoot$GameInputs
    _$BingoReadyBoard$QueryRoot$GameInputsFromJson(Map<String, dynamic> json) {
  return BingoReadyBoard$QueryRoot$GameInputs()
    ..bingoInputs = BingoReadyBoard$QueryRoot$GameInputs$BingoInputs.fromJson(
        json['bingoInputs'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BingoReadyBoard$QueryRoot$GameInputsToJson(
        BingoReadyBoard$QueryRoot$GameInputs instance) =>
    <String, dynamic>{
      'bingoInputs': instance.bingoInputs.toJson(),
    };

BingoReadyBoard$QueryRoot _$BingoReadyBoard$QueryRootFromJson(
    Map<String, dynamic> json) {
  return BingoReadyBoard$QueryRoot()
    ..gameEvent = BingoReadyBoard$QueryRoot$GameInputs.fromJson(
        json['gameEvent'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BingoReadyBoard$QueryRootToJson(
        BingoReadyBoard$QueryRoot instance) =>
    <String, dynamic>{
      'gameEvent': instance.gameEvent.toJson(),
    };

BingoPlayerMov$QueryRoot$GameInputs$BingoInputs
    _$BingoPlayerMov$QueryRoot$GameInputs$BingoInputsFromJson(
        Map<String, dynamic> json) {
  return BingoPlayerMov$QueryRoot$GameInputs$BingoInputs()
    ..playerMove = json['playerMove'] as bool;
}

Map<String, dynamic> _$BingoPlayerMov$QueryRoot$GameInputs$BingoInputsToJson(
        BingoPlayerMov$QueryRoot$GameInputs$BingoInputs instance) =>
    <String, dynamic>{
      'playerMove': instance.playerMove,
    };

BingoPlayerMov$QueryRoot$GameInputs
    _$BingoPlayerMov$QueryRoot$GameInputsFromJson(Map<String, dynamic> json) {
  return BingoPlayerMov$QueryRoot$GameInputs()
    ..bingoInputs = BingoPlayerMov$QueryRoot$GameInputs$BingoInputs.fromJson(
        json['bingoInputs'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BingoPlayerMov$QueryRoot$GameInputsToJson(
        BingoPlayerMov$QueryRoot$GameInputs instance) =>
    <String, dynamic>{
      'bingoInputs': instance.bingoInputs.toJson(),
    };

BingoPlayerMov$QueryRoot _$BingoPlayerMov$QueryRootFromJson(
    Map<String, dynamic> json) {
  return BingoPlayerMov$QueryRoot()
    ..gameEvent = BingoPlayerMov$QueryRoot$GameInputs.fromJson(
        json['gameEvent'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BingoPlayerMov$QueryRootToJson(
        BingoPlayerMov$QueryRoot instance) =>
    <String, dynamic>{
      'gameEvent': instance.gameEvent.toJson(),
    };

BoxesStartGame$QueryRoot$GameInputs$BoxesInputs
    _$BoxesStartGame$QueryRoot$GameInputs$BoxesInputsFromJson(
        Map<String, dynamic> json) {
  return BoxesStartGame$QueryRoot$GameInputs$BoxesInputs()
    ..startGame = json['startGame'] as bool;
}

Map<String, dynamic> _$BoxesStartGame$QueryRoot$GameInputs$BoxesInputsToJson(
        BoxesStartGame$QueryRoot$GameInputs$BoxesInputs instance) =>
    <String, dynamic>{
      'startGame': instance.startGame,
    };

BoxesStartGame$QueryRoot$GameInputs
    _$BoxesStartGame$QueryRoot$GameInputsFromJson(Map<String, dynamic> json) {
  return BoxesStartGame$QueryRoot$GameInputs()
    ..boxesInputs = BoxesStartGame$QueryRoot$GameInputs$BoxesInputs.fromJson(
        json['boxesInputs'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BoxesStartGame$QueryRoot$GameInputsToJson(
        BoxesStartGame$QueryRoot$GameInputs instance) =>
    <String, dynamic>{
      'boxesInputs': instance.boxesInputs.toJson(),
    };

BoxesStartGame$QueryRoot _$BoxesStartGame$QueryRootFromJson(
    Map<String, dynamic> json) {
  return BoxesStartGame$QueryRoot()
    ..gameEvent = BoxesStartGame$QueryRoot$GameInputs.fromJson(
        json['gameEvent'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BoxesStartGame$QueryRootToJson(
        BoxesStartGame$QueryRoot instance) =>
    <String, dynamic>{
      'gameEvent': instance.gameEvent.toJson(),
    };

BoxesPlayerMov$QueryRoot$GameInputs$BoxesInputs
    _$BoxesPlayerMov$QueryRoot$GameInputs$BoxesInputsFromJson(
        Map<String, dynamic> json) {
  return BoxesPlayerMov$QueryRoot$GameInputs$BoxesInputs()
    ..playerMove = json['playerMove'] as bool;
}

Map<String, dynamic> _$BoxesPlayerMov$QueryRoot$GameInputs$BoxesInputsToJson(
        BoxesPlayerMov$QueryRoot$GameInputs$BoxesInputs instance) =>
    <String, dynamic>{
      'playerMove': instance.playerMove,
    };

BoxesPlayerMov$QueryRoot$GameInputs
    _$BoxesPlayerMov$QueryRoot$GameInputsFromJson(Map<String, dynamic> json) {
  return BoxesPlayerMov$QueryRoot$GameInputs()
    ..boxesInputs = BoxesPlayerMov$QueryRoot$GameInputs$BoxesInputs.fromJson(
        json['boxesInputs'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BoxesPlayerMov$QueryRoot$GameInputsToJson(
        BoxesPlayerMov$QueryRoot$GameInputs instance) =>
    <String, dynamic>{
      'boxesInputs': instance.boxesInputs.toJson(),
    };

BoxesPlayerMov$QueryRoot _$BoxesPlayerMov$QueryRootFromJson(
    Map<String, dynamic> json) {
  return BoxesPlayerMov$QueryRoot()
    ..gameEvent = BoxesPlayerMov$QueryRoot$GameInputs.fromJson(
        json['gameEvent'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BoxesPlayerMov$QueryRootToJson(
        BoxesPlayerMov$QueryRoot instance) =>
    <String, dynamic>{
      'gameEvent': instance.gameEvent.toJson(),
    };

BluffStartGame$QueryRoot$GameInputs$BluffInputs
    _$BluffStartGame$QueryRoot$GameInputs$BluffInputsFromJson(
        Map<String, dynamic> json) {
  return BluffStartGame$QueryRoot$GameInputs$BluffInputs()
    ..startGame = json['startGame'] as bool;
}

Map<String, dynamic> _$BluffStartGame$QueryRoot$GameInputs$BluffInputsToJson(
        BluffStartGame$QueryRoot$GameInputs$BluffInputs instance) =>
    <String, dynamic>{
      'startGame': instance.startGame,
    };

BluffStartGame$QueryRoot$GameInputs
    _$BluffStartGame$QueryRoot$GameInputsFromJson(Map<String, dynamic> json) {
  return BluffStartGame$QueryRoot$GameInputs()
    ..bluffInputs = BluffStartGame$QueryRoot$GameInputs$BluffInputs.fromJson(
        json['bluffInputs'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BluffStartGame$QueryRoot$GameInputsToJson(
        BluffStartGame$QueryRoot$GameInputs instance) =>
    <String, dynamic>{
      'bluffInputs': instance.bluffInputs.toJson(),
    };

BluffStartGame$QueryRoot _$BluffStartGame$QueryRootFromJson(
    Map<String, dynamic> json) {
  return BluffStartGame$QueryRoot()
    ..gameEvent = BluffStartGame$QueryRoot$GameInputs.fromJson(
        json['gameEvent'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BluffStartGame$QueryRootToJson(
        BluffStartGame$QueryRoot instance) =>
    <String, dynamic>{
      'gameEvent': instance.gameEvent.toJson(),
    };

BluffPlayerPass$QueryRoot$GameInputs$BluffInputs
    _$BluffPlayerPass$QueryRoot$GameInputs$BluffInputsFromJson(
        Map<String, dynamic> json) {
  return BluffPlayerPass$QueryRoot$GameInputs$BluffInputs()
    ..pass = json['pass'] as bool;
}

Map<String, dynamic> _$BluffPlayerPass$QueryRoot$GameInputs$BluffInputsToJson(
        BluffPlayerPass$QueryRoot$GameInputs$BluffInputs instance) =>
    <String, dynamic>{
      'pass': instance.pass,
    };

BluffPlayerPass$QueryRoot$GameInputs
    _$BluffPlayerPass$QueryRoot$GameInputsFromJson(Map<String, dynamic> json) {
  return BluffPlayerPass$QueryRoot$GameInputs()
    ..bluffInputs = BluffPlayerPass$QueryRoot$GameInputs$BluffInputs.fromJson(
        json['bluffInputs'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BluffPlayerPass$QueryRoot$GameInputsToJson(
        BluffPlayerPass$QueryRoot$GameInputs instance) =>
    <String, dynamic>{
      'bluffInputs': instance.bluffInputs.toJson(),
    };

BluffPlayerPass$QueryRoot _$BluffPlayerPass$QueryRootFromJson(
    Map<String, dynamic> json) {
  return BluffPlayerPass$QueryRoot()
    ..gameEvent = BluffPlayerPass$QueryRoot$GameInputs.fromJson(
        json['gameEvent'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BluffPlayerPass$QueryRootToJson(
        BluffPlayerPass$QueryRoot instance) =>
    <String, dynamic>{
      'gameEvent': instance.gameEvent.toJson(),
    };

BluffPlayerFlip$QueryRoot$GameInputs$BluffInputs
    _$BluffPlayerFlip$QueryRoot$GameInputs$BluffInputsFromJson(
        Map<String, dynamic> json) {
  return BluffPlayerFlip$QueryRoot$GameInputs$BluffInputs()
    ..flip = json['flip'] as bool;
}

Map<String, dynamic> _$BluffPlayerFlip$QueryRoot$GameInputs$BluffInputsToJson(
        BluffPlayerFlip$QueryRoot$GameInputs$BluffInputs instance) =>
    <String, dynamic>{
      'flip': instance.flip,
    };

BluffPlayerFlip$QueryRoot$GameInputs
    _$BluffPlayerFlip$QueryRoot$GameInputsFromJson(Map<String, dynamic> json) {
  return BluffPlayerFlip$QueryRoot$GameInputs()
    ..bluffInputs = BluffPlayerFlip$QueryRoot$GameInputs$BluffInputs.fromJson(
        json['bluffInputs'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BluffPlayerFlip$QueryRoot$GameInputsToJson(
        BluffPlayerFlip$QueryRoot$GameInputs instance) =>
    <String, dynamic>{
      'bluffInputs': instance.bluffInputs.toJson(),
    };

BluffPlayerFlip$QueryRoot _$BluffPlayerFlip$QueryRootFromJson(
    Map<String, dynamic> json) {
  return BluffPlayerFlip$QueryRoot()
    ..gameEvent = BluffPlayerFlip$QueryRoot$GameInputs.fromJson(
        json['gameEvent'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BluffPlayerFlip$QueryRootToJson(
        BluffPlayerFlip$QueryRoot instance) =>
    <String, dynamic>{
      'gameEvent': instance.gameEvent.toJson(),
    };

BluffPlayerVoteRoundEnd$QueryRoot$GameInputs$BluffInputs
    _$BluffPlayerVoteRoundEnd$QueryRoot$GameInputs$BluffInputsFromJson(
        Map<String, dynamic> json) {
  return BluffPlayerVoteRoundEnd$QueryRoot$GameInputs$BluffInputs()
    ..voteRoundEnd = json['voteRoundEnd'] as bool;
}

Map<String,
    dynamic> _$BluffPlayerVoteRoundEnd$QueryRoot$GameInputs$BluffInputsToJson(
        BluffPlayerVoteRoundEnd$QueryRoot$GameInputs$BluffInputs instance) =>
    <String, dynamic>{
      'voteRoundEnd': instance.voteRoundEnd,
    };

BluffPlayerVoteRoundEnd$QueryRoot$GameInputs
    _$BluffPlayerVoteRoundEnd$QueryRoot$GameInputsFromJson(
        Map<String, dynamic> json) {
  return BluffPlayerVoteRoundEnd$QueryRoot$GameInputs()
    ..bluffInputs =
        BluffPlayerVoteRoundEnd$QueryRoot$GameInputs$BluffInputs.fromJson(
            json['bluffInputs'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BluffPlayerVoteRoundEnd$QueryRoot$GameInputsToJson(
        BluffPlayerVoteRoundEnd$QueryRoot$GameInputs instance) =>
    <String, dynamic>{
      'bluffInputs': instance.bluffInputs.toJson(),
    };

BluffPlayerVoteRoundEnd$QueryRoot _$BluffPlayerVoteRoundEnd$QueryRootFromJson(
    Map<String, dynamic> json) {
  return BluffPlayerVoteRoundEnd$QueryRoot()
    ..gameEvent = BluffPlayerVoteRoundEnd$QueryRoot$GameInputs.fromJson(
        json['gameEvent'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BluffPlayerVoteRoundEnd$QueryRootToJson(
        BluffPlayerVoteRoundEnd$QueryRoot instance) =>
    <String, dynamic>{
      'gameEvent': instance.gameEvent.toJson(),
    };

BluffPlayerDeal$QueryRoot$GameInputs$BluffInputs
    _$BluffPlayerDeal$QueryRoot$GameInputs$BluffInputsFromJson(
        Map<String, dynamic> json) {
  return BluffPlayerDeal$QueryRoot$GameInputs$BluffInputs()
    ..deal = json['deal'] as bool;
}

Map<String, dynamic> _$BluffPlayerDeal$QueryRoot$GameInputs$BluffInputsToJson(
        BluffPlayerDeal$QueryRoot$GameInputs$BluffInputs instance) =>
    <String, dynamic>{
      'deal': instance.deal,
    };

BluffPlayerDeal$QueryRoot$GameInputs
    _$BluffPlayerDeal$QueryRoot$GameInputsFromJson(Map<String, dynamic> json) {
  return BluffPlayerDeal$QueryRoot$GameInputs()
    ..bluffInputs = BluffPlayerDeal$QueryRoot$GameInputs$BluffInputs.fromJson(
        json['bluffInputs'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BluffPlayerDeal$QueryRoot$GameInputsToJson(
        BluffPlayerDeal$QueryRoot$GameInputs instance) =>
    <String, dynamic>{
      'bluffInputs': instance.bluffInputs.toJson(),
    };

BluffPlayerDeal$QueryRoot _$BluffPlayerDeal$QueryRootFromJson(
    Map<String, dynamic> json) {
  return BluffPlayerDeal$QueryRoot()
    ..gameEvent = BluffPlayerDeal$QueryRoot$GameInputs.fromJson(
        json['gameEvent'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BluffPlayerDeal$QueryRootToJson(
        BluffPlayerDeal$QueryRoot instance) =>
    <String, dynamic>{
      'gameEvent': instance.gameEvent.toJson(),
    };

JoinLobby$MutationRoot _$JoinLobby$MutationRootFromJson(
    Map<String, dynamic> json) {
  return JoinLobby$MutationRoot()..joinLobby = json['joinLobby'] as String;
}

Map<String, dynamic> _$JoinLobby$MutationRootToJson(
        JoinLobby$MutationRoot instance) =>
    <String, dynamic>{
      'joinLobby': instance.joinLobby,
    };

RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData$Board
    _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData$BoardFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData$Board()
    ..numbers = (json['numbers'] as List<dynamic>)
        .map((e) => (e as List<dynamic>).map((e) => e as int).toList())
        .toList()
    ..score = json['score'] as int;
}

Map<String, dynamic>
    _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData$BoardToJson(
            RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData$Board
                instance) =>
        <String, dynamic>{
          'numbers': instance.numbers,
          'score': instance.score,
        };

RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData
    _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerDataFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData()
    ..$$typename = json['__typename'] as String?
    ..board = json['board'] == null
        ? null
        : RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData$Board
            .fromJson(json['board'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerDataToJson(
            RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'board': instance.board?.toJson(),
        };

RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BoxesPlayerData
    _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BoxesPlayerDataFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BoxesPlayerData()
    ..$$typename = json['__typename'] as String?
    ..color = json['color'] as String
    ..score = json['score'] as int;
}

Map<String, dynamic>
    _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BoxesPlayerDataToJson(
            RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BoxesPlayerData
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'color': instance.color,
          'score': instance.score,
        };

RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BluffPlayerData$Card
    _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BluffPlayerData$CardFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BluffPlayerData$Card()
    ..color = _$enumDecode(_$CardColorEnumMap, json['color'],
        unknownValue: CardColor.artemisUnknown)
    ..number = _$enumDecode(_$CardNumEnumMap, json['number'],
        unknownValue: CardNum.artemisUnknown);
}

Map<String, dynamic>
    _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BluffPlayerData$CardToJson(
            RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BluffPlayerData$Card
                instance) =>
        <String, dynamic>{
          'color': _$CardColorEnumMap[instance.color],
          'number': _$CardNumEnumMap[instance.number],
        };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$CardColorEnumMap = {
  CardColor.spade: 'SPADE',
  CardColor.heart: 'HEART',
  CardColor.club: 'CLUB',
  CardColor.diamond: 'DIAMOND',
  CardColor.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$CardNumEnumMap = {
  CardNum.ace: 'ACE',
  CardNum.two: 'TWO',
  CardNum.three: 'THREE',
  CardNum.four: 'FOUR',
  CardNum.five: 'FIVE',
  CardNum.six: 'SIX',
  CardNum.seven: 'SEVEN',
  CardNum.eight: 'EIGHT',
  CardNum.nine: 'NINE',
  CardNum.ten: 'TEN',
  CardNum.jack: 'JACK',
  CardNum.queen: 'QUEEN',
  CardNum.king: 'KING',
  CardNum.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BluffPlayerData
    _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BluffPlayerDataFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BluffPlayerData()
    ..$$typename = json['__typename'] as String?
    ..endTurnRaised = json['endTurnRaised'] as bool
    ..cards = (json['cards'] as List<dynamic>)
        .map((e) =>
            RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BluffPlayerData$Card
                .fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic>
    _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BluffPlayerDataToJson(
            RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BluffPlayerData
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'endTurnRaised': instance.endTurnRaised,
          'cards': instance.cards.map((e) => e.toJson()).toList(),
        };

RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData
    _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameDataFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameDataToJson(
            RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
        };

RoomFieldsMixin$CommonPlayer$GamePlayer$Player
    _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$CommonPlayer$GamePlayer$Player()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerToJson(
        RoomFieldsMixin$CommonPlayer$GamePlayer$Player instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

RoomFieldsMixin$CommonPlayer$GamePlayer
    _$RoomFieldsMixin$CommonPlayer$GamePlayerFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$CommonPlayer$GamePlayer()
    ..isConnected = json['isConnected'] as bool
    ..$$typename = json['__typename'] as String?
    ..data = RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData.fromJson(
        json['data'] as Map<String, dynamic>)
    ..player = RoomFieldsMixin$CommonPlayer$GamePlayer$Player.fromJson(
        json['player'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RoomFieldsMixin$CommonPlayer$GamePlayerToJson(
        RoomFieldsMixin$CommonPlayer$GamePlayer instance) =>
    <String, dynamic>{
      'isConnected': instance.isConnected,
      '__typename': instance.$$typename,
      'data': instance.data.toJson(),
      'player': instance.player.toJson(),
    };

RoomFieldsMixin$CommonPlayer$LobbyPlayer$Player
    _$RoomFieldsMixin$CommonPlayer$LobbyPlayer$PlayerFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$CommonPlayer$LobbyPlayer$Player()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$RoomFieldsMixin$CommonPlayer$LobbyPlayer$PlayerToJson(
        RoomFieldsMixin$CommonPlayer$LobbyPlayer$Player instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

RoomFieldsMixin$CommonPlayer$LobbyPlayer
    _$RoomFieldsMixin$CommonPlayer$LobbyPlayerFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$CommonPlayer$LobbyPlayer()
    ..isConnected = json['isConnected'] as bool
    ..$$typename = json['__typename'] as String?
    ..player = RoomFieldsMixin$CommonPlayer$LobbyPlayer$Player.fromJson(
        json['player'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RoomFieldsMixin$CommonPlayer$LobbyPlayerToJson(
        RoomFieldsMixin$CommonPlayer$LobbyPlayer instance) =>
    <String, dynamic>{
      'isConnected': instance.isConnected,
      '__typename': instance.$$typename,
      'player': instance.player.toJson(),
    };

RoomFieldsMixin$CommonPlayer _$RoomFieldsMixin$CommonPlayerFromJson(
    Map<String, dynamic> json) {
  return RoomFieldsMixin$CommonPlayer()
    ..isConnected = json['isConnected'] as bool
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$RoomFieldsMixin$CommonPlayerToJson(
        RoomFieldsMixin$CommonPlayer instance) =>
    <String, dynamic>{
      'isConnected': instance.isConnected,
      '__typename': instance.$$typename,
    };

RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$Player
    _$RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$PlayerFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$Player()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic>
    _$RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$PlayerToJson(
            RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$Player instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
        };

RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer
    _$RoomFieldsMixin$RoomState$LobbyData$LobbyPlayerFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer()
    ..player = RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer$Player.fromJson(
        json['player'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RoomFieldsMixin$RoomState$LobbyData$LobbyPlayerToJson(
        RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer instance) =>
    <String, dynamic>{
      'player': instance.player.toJson(),
    };

RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank$Player
    _$RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank$PlayerFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank$Player()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic>
    _$RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank$PlayerToJson(
            RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank$Player
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
        };

RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank
    _$RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$RankFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank()
    ..rank = json['rank'] as int
    ..player = RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank$Player
        .fromJson(json['player'] as Map<String, dynamic>);
}

Map<String,
    dynamic> _$RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$RankToJson(
        RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'player': instance.player.toJson(),
    };

RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData
    _$RoomFieldsMixin$RoomState$LobbyData$LastGame$GameDataFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData()
    ..leaderboard = (json['leaderboard'] as List<dynamic>)
        .map((e) =>
            RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank.fromJson(
                e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic>
    _$RoomFieldsMixin$RoomState$LobbyData$LastGame$GameDataToJson(
            RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData instance) =>
        <String, dynamic>{
          'leaderboard': instance.leaderboard.map((e) => e.toJson()).toList(),
        };

RoomFieldsMixin$RoomState$LobbyData$LastGame
    _$RoomFieldsMixin$RoomState$LobbyData$LastGameFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$LobbyData$LastGame()
    ..lastGame = RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData.fromJson(
        json['lastGame'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RoomFieldsMixin$RoomState$LobbyData$LastGameToJson(
        RoomFieldsMixin$RoomState$LobbyData$LastGame instance) =>
    <String, dynamic>{
      'lastGame': instance.lastGame.toJson(),
    };

RoomFieldsMixin$RoomState$LobbyData
    _$RoomFieldsMixin$RoomState$LobbyDataFromJson(Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$LobbyData()
    ..$$typename = json['__typename'] as String?
    ..players = (json['players'] as List<dynamic>)
        .map((e) => RoomFieldsMixin$RoomState$LobbyData$LobbyPlayer.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..lastGame = json['lastGame'] == null
        ? null
        : RoomFieldsMixin$RoomState$LobbyData$LastGame.fromJson(
            json['lastGame'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RoomFieldsMixin$RoomState$LobbyDataToJson(
        RoomFieldsMixin$RoomState$LobbyData instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'players': instance.players.map((e) => e.toJson()).toList(),
      'lastGame': instance.lastGame?.toJson(),
    };

RoomFieldsMixin$RoomState$GameData$Rank$Player
    _$RoomFieldsMixin$RoomState$GameData$Rank$PlayerFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$Rank$Player()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$RoomFieldsMixin$RoomState$GameData$Rank$PlayerToJson(
        RoomFieldsMixin$RoomState$GameData$Rank$Player instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

RoomFieldsMixin$RoomState$GameData$Rank
    _$RoomFieldsMixin$RoomState$GameData$RankFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$Rank()
    ..rank = json['rank'] as int
    ..player = RoomFieldsMixin$RoomState$GameData$Rank$Player.fromJson(
        json['player'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RoomFieldsMixin$RoomState$GameData$RankToJson(
        RoomFieldsMixin$RoomState$GameData$Rank instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'player': instance.player.toJson(),
    };

RoomFieldsMixin$RoomState$GameData$GamePlayer$Player
    _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$GamePlayer$Player()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic>
    _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerToJson(
            RoomFieldsMixin$RoomState$GameData$GamePlayer$Player instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
        };

RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerData$Board
    _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerData$BoardFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerData$Board()
    ..numbers = (json['numbers'] as List<dynamic>)
        .map((e) => (e as List<dynamic>).map((e) => e as int).toList())
        .toList();
}

Map<String, dynamic>
    _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerData$BoardToJson(
            RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerData$Board
                instance) =>
        <String, dynamic>{
          'numbers': instance.numbers,
        };

RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerData
    _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerDataFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerData()
    ..$$typename = json['__typename'] as String?
    ..board = json['board'] == null
        ? null
        : RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerData$Board
            .fromJson(json['board'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerDataToJson(
            RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BingoPlayerData
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'board': instance.board?.toJson(),
        };

RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BoxesPlayerData
    _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BoxesPlayerDataFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BoxesPlayerData()
    ..$$typename = json['__typename'] as String?
    ..color = json['color'] as String;
}

Map<String, dynamic>
    _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BoxesPlayerDataToJson(
            RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BoxesPlayerData
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'color': instance.color,
        };

RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BluffPlayerData$Card
    _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BluffPlayerData$CardFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BluffPlayerData$Card()
    ..color = _$enumDecode(_$CardColorEnumMap, json['color'],
        unknownValue: CardColor.artemisUnknown)
    ..number = _$enumDecode(_$CardNumEnumMap, json['number'],
        unknownValue: CardNum.artemisUnknown);
}

Map<String, dynamic>
    _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BluffPlayerData$CardToJson(
            RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BluffPlayerData$Card
                instance) =>
        <String, dynamic>{
          'color': _$CardColorEnumMap[instance.color],
          'number': _$CardNumEnumMap[instance.number],
        };

RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BluffPlayerData
    _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BluffPlayerDataFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BluffPlayerData()
    ..$$typename = json['__typename'] as String?
    ..cards = (json['cards'] as List<dynamic>)
        .map((e) =>
            RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BluffPlayerData$Card
                .fromJson(e as Map<String, dynamic>))
        .toList()
    ..endTurnRaised = json['endTurnRaised'] as bool;
}

Map<String, dynamic>
    _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BluffPlayerDataToJson(
            RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BluffPlayerData
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'cards': instance.cards.map((e) => e.toJson()).toList(),
          'endTurnRaised': instance.endTurnRaised,
        };

RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData
    _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameDataFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameDataToJson(
            RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
        };

RoomFieldsMixin$RoomState$GameData$GamePlayer
    _$RoomFieldsMixin$RoomState$GameData$GamePlayerFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$GamePlayer()
    ..player = RoomFieldsMixin$RoomState$GameData$GamePlayer$Player.fromJson(
        json['player'] as Map<String, dynamic>)
    ..data =
        RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RoomFieldsMixin$RoomState$GameData$GamePlayerToJson(
        RoomFieldsMixin$RoomState$GameData$GamePlayer instance) =>
    <String, dynamic>{
      'player': instance.player.toJson(),
      'data': instance.data.toJson(),
    };

RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$BoardCreation
    _$RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$BoardCreationFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$BoardCreation()
    ..$$typename = json['__typename'] as String?
    ..ready = (json['ready'] as List<dynamic>).map((e) => e as String).toList();
}

Map<String, dynamic>
    _$RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$BoardCreationToJson(
            RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$BoardCreation
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'ready': instance.ready,
        };

RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunning$SelectedCell
    _$RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunning$SelectedCellFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunning$SelectedCell()
    ..selectedBy = json['selectedBy'] as String
    ..cellValue = json['cellValue'] as int;
}

Map<String, dynamic>
    _$RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunning$SelectedCellToJson(
            RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunning$SelectedCell
                instance) =>
        <String, dynamic>{
          'selectedBy': instance.selectedBy,
          'cellValue': instance.cellValue,
        };

RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunning
    _$RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunningFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunning()
    ..$$typename = json['__typename'] as String?
    ..turn = json['turn'] as String
    ..selectedNumbers = (json['selectedNumbers'] as List<dynamic>)
        .map((e) =>
            RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunning$SelectedCell
                .fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic>
    _$RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunningToJson(
            RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState$GameRunning
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'turn': instance.turn,
          'selectedNumbers':
              instance.selectedNumbers.map((e) => e.toJson()).toList(),
        };

RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState
    _$RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameStateFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameStateToJson(
            RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
        };

RoomFieldsMixin$RoomState$GameData$Game$Bingo
    _$RoomFieldsMixin$RoomState$GameData$Game$BingoFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$Game$Bingo()
    ..$$typename = json['__typename'] as String?
    ..boardSize = json['boardSize'] as int
    ..gameState =
        RoomFieldsMixin$RoomState$GameData$Game$Bingo$GameState.fromJson(
            json['gameState'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RoomFieldsMixin$RoomState$GameData$Game$BingoToJson(
        RoomFieldsMixin$RoomState$GameData$Game$Bingo instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'boardSize': instance.boardSize,
      'gameState': instance.gameState.toJson(),
    };

RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$Occupied
    _$RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$OccupiedFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$Occupied()
    ..id = json['id'] as int
    ..occupiedBy = json['occupiedBy'] as String
    ..movNo = json['movNo'] as int
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$OccupiedToJson(
            RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$Occupied
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'occupiedBy': instance.occupiedBy,
          'movNo': instance.movNo,
          '__typename': instance.$$typename,
        };

RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$Unoccupied
    _$RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$UnoccupiedFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$Unoccupied()
    ..id = json['id'] as int
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$UnoccupiedToJson(
            RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$Unoccupied
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          '__typename': instance.$$typename,
        };

RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType
    _$RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeTypeFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeTypeToJson(
            RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
        };

RoomFieldsMixin$RoomState$GameData$Game$Boxes$Cell
    _$RoomFieldsMixin$RoomState$GameData$Game$Boxes$CellFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$Game$Boxes$Cell()
    ..occupiedBy = json['occupiedBy'] as String?;
}

Map<String, dynamic> _$RoomFieldsMixin$RoomState$GameData$Game$Boxes$CellToJson(
        RoomFieldsMixin$RoomState$GameData$Game$Boxes$Cell instance) =>
    <String, dynamic>{
      'occupiedBy': instance.occupiedBy,
    };

RoomFieldsMixin$RoomState$GameData$Game$Boxes
    _$RoomFieldsMixin$RoomState$GameData$Game$BoxesFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$Game$Boxes()
    ..$$typename = json['__typename'] as String?
    ..turn = json['turn'] as String
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..horizontalEdges = (json['horizontalEdges'] as List<dynamic>)
        .map((e) =>
            RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType.fromJson(
                e as Map<String, dynamic>))
        .toList()
    ..verticalEdges = (json['verticalEdges'] as List<dynamic>)
        .map((e) =>
            RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType.fromJson(
                e as Map<String, dynamic>))
        .toList()
    ..cells = (json['cells'] as List<dynamic>)
        .map((e) => RoomFieldsMixin$RoomState$GameData$Game$Boxes$Cell.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$RoomFieldsMixin$RoomState$GameData$Game$BoxesToJson(
        RoomFieldsMixin$RoomState$GameData$Game$Boxes instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'turn': instance.turn,
      'width': instance.width,
      'height': instance.height,
      'horizontalEdges':
          instance.horizontalEdges.map((e) => e.toJson()).toList(),
      'verticalEdges': instance.verticalEdges.map((e) => e.toJson()).toList(),
      'cells': instance.cells.map((e) => e.toJson()).toList(),
    };

RoomFieldsMixin$RoomState$GameData$Game$Bluff$Card
    _$RoomFieldsMixin$RoomState$GameData$Game$Bluff$CardFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$Game$Bluff$Card()
    ..color = _$enumDecode(_$CardColorEnumMap, json['color'],
        unknownValue: CardColor.artemisUnknown)
    ..number = _$enumDecode(_$CardNumEnumMap, json['number'],
        unknownValue: CardNum.artemisUnknown);
}

Map<String, dynamic> _$RoomFieldsMixin$RoomState$GameData$Game$Bluff$CardToJson(
        RoomFieldsMixin$RoomState$GameData$Game$Bluff$Card instance) =>
    <String, dynamic>{
      'color': _$CardColorEnumMap[instance.color],
      'number': _$CardNumEnumMap[instance.number],
    };

RoomFieldsMixin$RoomState$GameData$Game$Bluff
    _$RoomFieldsMixin$RoomState$GameData$Game$BluffFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$Game$Bluff()
    ..$$typename = json['__typename'] as String?
    ..turn = json['turn'] as String
    ..roundPlayer = json['roundPlayer'] as String
    ..claimedCard = json['claimedCard'] == null
        ? null
        : RoomFieldsMixin$RoomState$GameData$Game$Bluff$Card.fromJson(
            json['claimedCard'] as Map<String, dynamic>)
    ..deck = (json['deck'] as List<dynamic>)
        .map((e) => RoomFieldsMixin$RoomState$GameData$Game$Bluff$Card.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..centeredCard = (json['centeredCard'] as List<dynamic>)
        .map((e) => (e as List<dynamic>)
            .map((e) =>
                RoomFieldsMixin$RoomState$GameData$Game$Bluff$Card.fromJson(
                    e as Map<String, dynamic>))
            .toList())
        .toList();
}

Map<String, dynamic> _$RoomFieldsMixin$RoomState$GameData$Game$BluffToJson(
        RoomFieldsMixin$RoomState$GameData$Game$Bluff instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'turn': instance.turn,
      'roundPlayer': instance.roundPlayer,
      'claimedCard': instance.claimedCard?.toJson(),
      'deck': instance.deck.map((e) => e.toJson()).toList(),
      'centeredCard': instance.centeredCard
          .map((e) => e.map((e) => e.toJson()).toList())
          .toList(),
    };

RoomFieldsMixin$RoomState$GameData$Game
    _$RoomFieldsMixin$RoomState$GameData$GameFromJson(
        Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData$Game()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$RoomFieldsMixin$RoomState$GameData$GameToJson(
        RoomFieldsMixin$RoomState$GameData$Game instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
    };

RoomFieldsMixin$RoomState$GameData _$RoomFieldsMixin$RoomState$GameDataFromJson(
    Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState$GameData()
    ..$$typename = json['__typename'] as String?
    ..leaderboard = (json['leaderboard'] as List<dynamic>)
        .map((e) => RoomFieldsMixin$RoomState$GameData$Rank.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..players = (json['players'] as List<dynamic>)
        .map((e) => RoomFieldsMixin$RoomState$GameData$GamePlayer.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..game = RoomFieldsMixin$RoomState$GameData$Game.fromJson(
        json['game'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RoomFieldsMixin$RoomState$GameDataToJson(
        RoomFieldsMixin$RoomState$GameData instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'leaderboard': instance.leaderboard.map((e) => e.toJson()).toList(),
      'players': instance.players.map((e) => e.toJson()).toList(),
      'game': instance.game.toJson(),
    };

RoomFieldsMixin$RoomState _$RoomFieldsMixin$RoomStateFromJson(
    Map<String, dynamic> json) {
  return RoomFieldsMixin$RoomState()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$RoomFieldsMixin$RoomStateToJson(
        RoomFieldsMixin$RoomState instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
    };

GameMessages$Subscription$ServerResponse$PlayerJoined$Player
    _$GameMessages$Subscription$ServerResponse$PlayerJoined$PlayerFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$PlayerJoined$Player()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$PlayerJoined$PlayerToJson(
            GameMessages$Subscription$ServerResponse$PlayerJoined$Player
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
        };

GameMessages$Subscription$ServerResponse$PlayerJoined$Room
    _$GameMessages$Subscription$ServerResponse$PlayerJoined$RoomFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$PlayerJoined$Room()
    ..id = json['id'] as String
    ..players = (json['players'] as List<dynamic>)
        .map((e) =>
            RoomFieldsMixin$CommonPlayer.fromJson(e as Map<String, dynamic>))
        .toList()
    ..state = RoomFieldsMixin$RoomState.fromJson(
        json['state'] as Map<String, dynamic>);
}

Map<String,
    dynamic> _$GameMessages$Subscription$ServerResponse$PlayerJoined$RoomToJson(
        GameMessages$Subscription$ServerResponse$PlayerJoined$Room instance) =>
    <String, dynamic>{
      'id': instance.id,
      'players': instance.players.map((e) => e.toJson()).toList(),
      'state': instance.state.toJson(),
    };

GameMessages$Subscription$ServerResponse$PlayerJoined
    _$GameMessages$Subscription$ServerResponse$PlayerJoinedFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$PlayerJoined()
    ..$$typename = json['__typename'] as String?
    ..player =
        GameMessages$Subscription$ServerResponse$PlayerJoined$Player.fromJson(
            json['player'] as Map<String, dynamic>)
    ..room =
        GameMessages$Subscription$ServerResponse$PlayerJoined$Room.fromJson(
            json['room'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$PlayerJoinedToJson(
            GameMessages$Subscription$ServerResponse$PlayerJoined instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'player': instance.player.toJson(),
          'room': instance.room.toJson(),
        };

GameMessages$Subscription$ServerResponse$PlayerConnected$Player
    _$GameMessages$Subscription$ServerResponse$PlayerConnected$PlayerFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$PlayerConnected$Player()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$PlayerConnected$PlayerToJson(
            GameMessages$Subscription$ServerResponse$PlayerConnected$Player
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
        };

GameMessages$Subscription$ServerResponse$PlayerConnected$Room
    _$GameMessages$Subscription$ServerResponse$PlayerConnected$RoomFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$PlayerConnected$Room()
    ..id = json['id'] as String
    ..players = (json['players'] as List<dynamic>)
        .map((e) =>
            RoomFieldsMixin$CommonPlayer.fromJson(e as Map<String, dynamic>))
        .toList()
    ..state = RoomFieldsMixin$RoomState.fromJson(
        json['state'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$PlayerConnected$RoomToJson(
            GameMessages$Subscription$ServerResponse$PlayerConnected$Room
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'players': instance.players.map((e) => e.toJson()).toList(),
          'state': instance.state.toJson(),
        };

GameMessages$Subscription$ServerResponse$PlayerConnected
    _$GameMessages$Subscription$ServerResponse$PlayerConnectedFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$PlayerConnected()
    ..$$typename = json['__typename'] as String?
    ..player = GameMessages$Subscription$ServerResponse$PlayerConnected$Player
        .fromJson(json['player'] as Map<String, dynamic>)
    ..room =
        GameMessages$Subscription$ServerResponse$PlayerConnected$Room.fromJson(
            json['room'] as Map<String, dynamic>);
}

Map<String,
    dynamic> _$GameMessages$Subscription$ServerResponse$PlayerConnectedToJson(
        GameMessages$Subscription$ServerResponse$PlayerConnected instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'player': instance.player.toJson(),
      'room': instance.room.toJson(),
    };

GameMessages$Subscription$ServerResponse$PlayerLeft$Player
    _$GameMessages$Subscription$ServerResponse$PlayerLeft$PlayerFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$PlayerLeft$Player()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String,
    dynamic> _$GameMessages$Subscription$ServerResponse$PlayerLeft$PlayerToJson(
        GameMessages$Subscription$ServerResponse$PlayerLeft$Player instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

GameMessages$Subscription$ServerResponse$PlayerLeft$Room
    _$GameMessages$Subscription$ServerResponse$PlayerLeft$RoomFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$PlayerLeft$Room()
    ..id = json['id'] as String
    ..players = (json['players'] as List<dynamic>)
        .map((e) =>
            RoomFieldsMixin$CommonPlayer.fromJson(e as Map<String, dynamic>))
        .toList()
    ..state = RoomFieldsMixin$RoomState.fromJson(
        json['state'] as Map<String, dynamic>);
}

Map<String,
    dynamic> _$GameMessages$Subscription$ServerResponse$PlayerLeft$RoomToJson(
        GameMessages$Subscription$ServerResponse$PlayerLeft$Room instance) =>
    <String, dynamic>{
      'id': instance.id,
      'players': instance.players.map((e) => e.toJson()).toList(),
      'state': instance.state.toJson(),
    };

GameMessages$Subscription$ServerResponse$PlayerLeft
    _$GameMessages$Subscription$ServerResponse$PlayerLeftFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$PlayerLeft()
    ..$$typename = json['__typename'] as String?
    ..player =
        GameMessages$Subscription$ServerResponse$PlayerLeft$Player.fromJson(
            json['player'] as Map<String, dynamic>)
    ..room = GameMessages$Subscription$ServerResponse$PlayerLeft$Room.fromJson(
        json['room'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$PlayerLeftToJson(
            GameMessages$Subscription$ServerResponse$PlayerLeft instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'player': instance.player.toJson(),
          'room': instance.room.toJson(),
        };

GameMessages$Subscription$ServerResponse$PlayerRemoved$Player
    _$GameMessages$Subscription$ServerResponse$PlayerRemoved$PlayerFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$PlayerRemoved$Player()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$PlayerRemoved$PlayerToJson(
            GameMessages$Subscription$ServerResponse$PlayerRemoved$Player
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
        };

GameMessages$Subscription$ServerResponse$PlayerRemoved$Room
    _$GameMessages$Subscription$ServerResponse$PlayerRemoved$RoomFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$PlayerRemoved$Room()
    ..id = json['id'] as String
    ..players = (json['players'] as List<dynamic>)
        .map((e) =>
            RoomFieldsMixin$CommonPlayer.fromJson(e as Map<String, dynamic>))
        .toList()
    ..state = RoomFieldsMixin$RoomState.fromJson(
        json['state'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$PlayerRemoved$RoomToJson(
            GameMessages$Subscription$ServerResponse$PlayerRemoved$Room
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'players': instance.players.map((e) => e.toJson()).toList(),
          'state': instance.state.toJson(),
        };

GameMessages$Subscription$ServerResponse$PlayerRemoved
    _$GameMessages$Subscription$ServerResponse$PlayerRemovedFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$PlayerRemoved()
    ..$$typename = json['__typename'] as String?
    ..player =
        GameMessages$Subscription$ServerResponse$PlayerRemoved$Player.fromJson(
            json['player'] as Map<String, dynamic>)
    ..room =
        GameMessages$Subscription$ServerResponse$PlayerRemoved$Room.fromJson(
            json['room'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$PlayerRemovedToJson(
            GameMessages$Subscription$ServerResponse$PlayerRemoved instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'player': instance.player.toJson(),
          'room': instance.room.toJson(),
        };

GameMessages$Subscription$ServerResponse$GameMessage$Room
    _$GameMessages$Subscription$ServerResponse$GameMessage$RoomFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$GameMessage$Room()
    ..id = json['id'] as String
    ..players = (json['players'] as List<dynamic>)
        .map((e) =>
            RoomFieldsMixin$CommonPlayer.fromJson(e as Map<String, dynamic>))
        .toList()
    ..state = RoomFieldsMixin$RoomState.fromJson(
        json['state'] as Map<String, dynamic>);
}

Map<String,
    dynamic> _$GameMessages$Subscription$ServerResponse$GameMessage$RoomToJson(
        GameMessages$Subscription$ServerResponse$GameMessage$Room instance) =>
    <String, dynamic>{
      'id': instance.id,
      'players': instance.players.map((e) => e.toJson()).toList(),
      'state': instance.state.toJson(),
    };

GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$Game
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$Game()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$GameToJson(
            GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$Game
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
        };

GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStartedFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted()
    ..$$typename = json['__typename'] as String?
    ..game =
        GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted$Game
            .fromJson(json['game'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStartedToJson(
            GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$GameStarted
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'game': instance.game.toJson(),
        };

GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$Room
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$RoomFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$Room()
    ..id = json['id'] as String
    ..players = (json['players'] as List<dynamic>)
        .map((e) =>
            RoomFieldsMixin$CommonPlayer.fromJson(e as Map<String, dynamic>))
        .toList()
    ..state = RoomFieldsMixin$RoomState.fromJson(
        json['state'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$RoomToJson(
            GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$Room
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'players': instance.players.map((e) => e.toJson()).toList(),
          'state': instance.state.toJson(),
        };

GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdateFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate()
    ..$$typename = json['__typename'] as String?
    ..room =
        GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate$Room
            .fromJson(json['room'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdateToJson(
            GameMessages$Subscription$ServerResponse$GameMessage$GameEvents$RoomUpdate
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'room': instance.room.toJson(),
        };

GameMessages$Subscription$ServerResponse$GameMessage$GameEvents
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEventsFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$GameMessage$GameEvents()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$GameMessage$GameEventsToJson(
            GameMessages$Subscription$ServerResponse$GameMessage$GameEvents
                instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
        };

GameMessages$Subscription$ServerResponse$GameMessage
    _$GameMessages$Subscription$ServerResponse$GameMessageFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse$GameMessage()
    ..$$typename = json['__typename'] as String?
    ..room = GameMessages$Subscription$ServerResponse$GameMessage$Room.fromJson(
        json['room'] as Map<String, dynamic>)
    ..event = GameMessages$Subscription$ServerResponse$GameMessage$GameEvents
        .fromJson(json['event'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$GameMessages$Subscription$ServerResponse$GameMessageToJson(
            GameMessages$Subscription$ServerResponse$GameMessage instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'room': instance.room.toJson(),
          'event': instance.event.toJson(),
        };

GameMessages$Subscription$ServerResponse
    _$GameMessages$Subscription$ServerResponseFromJson(
        Map<String, dynamic> json) {
  return GameMessages$Subscription$ServerResponse()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$GameMessages$Subscription$ServerResponseToJson(
        GameMessages$Subscription$ServerResponse instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
    };

GameMessages$Subscription _$GameMessages$SubscriptionFromJson(
    Map<String, dynamic> json) {
  return GameMessages$Subscription()
    ..serverMessages = GameMessages$Subscription$ServerResponse.fromJson(
        json['serverMessages'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GameMessages$SubscriptionToJson(
        GameMessages$Subscription instance) =>
    <String, dynamic>{
      'serverMessages': instance.serverMessages.toJson(),
    };

CreateLobbyArguments _$CreateLobbyArgumentsFromJson(Map<String, dynamic> json) {
  return CreateLobbyArguments(
    playerId: json['playerId'] as String,
    playerName: json['playerName'] as String,
  );
}

Map<String, dynamic> _$CreateLobbyArgumentsToJson(
        CreateLobbyArguments instance) =>
    <String, dynamic>{
      'playerId': instance.playerId,
      'playerName': instance.playerName,
    };

DisconnectArguments _$DisconnectArgumentsFromJson(Map<String, dynamic> json) {
  return DisconnectArguments(
    playerId: json['playerId'] as String,
    roomId: json['roomId'] as String,
  );
}

Map<String, dynamic> _$DisconnectArgumentsToJson(
        DisconnectArguments instance) =>
    <String, dynamic>{
      'playerId': instance.playerId,
      'roomId': instance.roomId,
    };

BingoStartGameArguments _$BingoStartGameArgumentsFromJson(
    Map<String, dynamic> json) {
  return BingoStartGameArguments(
    playerId: json['playerId'] as String,
    roomId: json['roomId'] as String,
    boardSize: json['boardSize'] as int,
  );
}

Map<String, dynamic> _$BingoStartGameArgumentsToJson(
        BingoStartGameArguments instance) =>
    <String, dynamic>{
      'playerId': instance.playerId,
      'roomId': instance.roomId,
      'boardSize': instance.boardSize,
    };

BingoReadyBoardArguments _$BingoReadyBoardArgumentsFromJson(
    Map<String, dynamic> json) {
  return BingoReadyBoardArguments(
    playerId: json['playerId'] as String,
    roomId: json['roomId'] as String,
    board: (json['board'] as List<dynamic>)
        .map((e) => (e as List<dynamic>).map((e) => e as int).toList())
        .toList(),
  );
}

Map<String, dynamic> _$BingoReadyBoardArgumentsToJson(
        BingoReadyBoardArguments instance) =>
    <String, dynamic>{
      'playerId': instance.playerId,
      'roomId': instance.roomId,
      'board': instance.board,
    };

BingoPlayerMovArguments _$BingoPlayerMovArgumentsFromJson(
    Map<String, dynamic> json) {
  return BingoPlayerMovArguments(
    playerId: json['playerId'] as String,
    roomId: json['roomId'] as String,
    number: json['number'] as int,
  );
}

Map<String, dynamic> _$BingoPlayerMovArgumentsToJson(
        BingoPlayerMovArguments instance) =>
    <String, dynamic>{
      'playerId': instance.playerId,
      'roomId': instance.roomId,
      'number': instance.number,
    };

BoxesStartGameArguments _$BoxesStartGameArgumentsFromJson(
    Map<String, dynamic> json) {
  return BoxesStartGameArguments(
    playerId: json['playerId'] as String,
    roomId: json['roomId'] as String,
    boardWidth: json['boardWidth'] as int,
    boardHeight: json['boardHeight'] as int,
  );
}

Map<String, dynamic> _$BoxesStartGameArgumentsToJson(
        BoxesStartGameArguments instance) =>
    <String, dynamic>{
      'playerId': instance.playerId,
      'roomId': instance.roomId,
      'boardWidth': instance.boardWidth,
      'boardHeight': instance.boardHeight,
    };

BoxesPlayerMovArguments _$BoxesPlayerMovArgumentsFromJson(
    Map<String, dynamic> json) {
  return BoxesPlayerMovArguments(
    playerId: json['playerId'] as String,
    roomId: json['roomId'] as String,
    edgeId: json['edgeId'] as int,
  );
}

Map<String, dynamic> _$BoxesPlayerMovArgumentsToJson(
        BoxesPlayerMovArguments instance) =>
    <String, dynamic>{
      'playerId': instance.playerId,
      'roomId': instance.roomId,
      'edgeId': instance.edgeId,
    };

BluffStartGameArguments _$BluffStartGameArgumentsFromJson(
    Map<String, dynamic> json) {
  return BluffStartGameArguments(
    playerId: json['playerId'] as String,
    roomId: json['roomId'] as String,
    seed: json['seed'] as int,
  );
}

Map<String, dynamic> _$BluffStartGameArgumentsToJson(
        BluffStartGameArguments instance) =>
    <String, dynamic>{
      'playerId': instance.playerId,
      'roomId': instance.roomId,
      'seed': instance.seed,
    };

BluffPlayerPassArguments _$BluffPlayerPassArgumentsFromJson(
    Map<String, dynamic> json) {
  return BluffPlayerPassArguments(
    playerId: json['playerId'] as String,
    roomId: json['roomId'] as String,
  );
}

Map<String, dynamic> _$BluffPlayerPassArgumentsToJson(
        BluffPlayerPassArguments instance) =>
    <String, dynamic>{
      'playerId': instance.playerId,
      'roomId': instance.roomId,
    };

BluffPlayerFlipArguments _$BluffPlayerFlipArgumentsFromJson(
    Map<String, dynamic> json) {
  return BluffPlayerFlipArguments(
    playerId: json['playerId'] as String,
    roomId: json['roomId'] as String,
  );
}

Map<String, dynamic> _$BluffPlayerFlipArgumentsToJson(
        BluffPlayerFlipArguments instance) =>
    <String, dynamic>{
      'playerId': instance.playerId,
      'roomId': instance.roomId,
    };

BluffPlayerVoteRoundEndArguments _$BluffPlayerVoteRoundEndArgumentsFromJson(
    Map<String, dynamic> json) {
  return BluffPlayerVoteRoundEndArguments(
    playerId: json['playerId'] as String,
    roomId: json['roomId'] as String,
  );
}

Map<String, dynamic> _$BluffPlayerVoteRoundEndArgumentsToJson(
        BluffPlayerVoteRoundEndArguments instance) =>
    <String, dynamic>{
      'playerId': instance.playerId,
      'roomId': instance.roomId,
    };

BluffPlayerDealArguments _$BluffPlayerDealArgumentsFromJson(
    Map<String, dynamic> json) {
  return BluffPlayerDealArguments(
    playerId: json['playerId'] as String,
    roomId: json['roomId'] as String,
    cards: (json['cards'] as List<dynamic>).map((e) => e as int).toList(),
    claim: json['claim'] as int,
  );
}

Map<String, dynamic> _$BluffPlayerDealArgumentsToJson(
        BluffPlayerDealArguments instance) =>
    <String, dynamic>{
      'playerId': instance.playerId,
      'roomId': instance.roomId,
      'cards': instance.cards,
      'claim': instance.claim,
    };

JoinLobbyArguments _$JoinLobbyArgumentsFromJson(Map<String, dynamic> json) {
  return JoinLobbyArguments(
    playerId: json['playerId'] as String,
    playerName: json['playerName'] as String,
    roomId: json['roomId'] as String,
  );
}

Map<String, dynamic> _$JoinLobbyArgumentsToJson(JoinLobbyArguments instance) =>
    <String, dynamic>{
      'playerId': instance.playerId,
      'playerName': instance.playerName,
      'roomId': instance.roomId,
    };

GameMessagesArguments _$GameMessagesArgumentsFromJson(
    Map<String, dynamic> json) {
  return GameMessagesArguments(
    roomId: json['roomId'] as String,
    playerId: json['playerId'] as String,
  );
}

Map<String, dynamic> _$GameMessagesArgumentsToJson(
        GameMessagesArguments instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'playerId': instance.playerId,
    };

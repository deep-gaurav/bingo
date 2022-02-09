import 'dart:math';

import 'package:bingo/api/api.graphql.dart';
import 'package:bingo/networking/clientProvider.dart';
import 'package:flutter/material.dart';
import 'package:playing_cards/playing_cards.dart';

typedef BluffData = RoomFieldsMixin$RoomState$GameData$Game$Bluff;
typedef BluffPlayerData
    = RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BluffPlayerData;
typedef ServerCard = CardFieldsMixin;

class BluffBoard extends StatefulWidget {
  final BluffData data;
  final RoomFieldsMixin$CommonPlayer$GamePlayer turnPlayer;
  final RoomFieldsMixin$RoomState$GameData gameData;
  final String roomId;

  BluffBoard({
    required this.data,
    required this.turnPlayer,
    required this.gameData,
    required this.roomId,
  });
  @override
  State<BluffBoard> createState() => _BluffBoardState();
}

class _BluffBoardState extends State<BluffBoard> {
  bool get isCurrentMove =>
      widget.data.turn == GameClient.of(context)!.playerId;
  ShapeBorder cardShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: BorderSide(color: Colors.black, width: 1));

  List<PlayingCard> get playerCards {
    return (widget.gameData.players
                .firstWhere((player) =>
                    player.player.id == GameClient.of(context)!.playerId)
                .data
            as RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BluffPlayerData)
        .cards
        .map((e) => serverCardToPlayingCard(e))
        .toList();
  }

  List<PlayingCard> selectedCards = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Text(
              isCurrentMove
                  ? 'Your Turn'
                  : '${widget.turnPlayer.player.name} is choosing...',
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(
                  // horizontal: 40,
                  ),
              child: LayoutBuilder(builder: (context, constrainsts) {
                return FittedBox(
                  child: Container(
                    height: 1000,
                    width: constrainsts.biggest.aspectRatio * 1000,
                    child: Stack(
                      alignment: Alignment.center,
                      clipBehavior: Clip.none,
                      children: [
                        if (widget.data.centeredCard.length > 1)
                          ...widget.data.centeredCard
                              .sublist(0, widget.data.centeredCard.length - 1)
                              .map((e) => e.map(
                                    (e) => Center(
                                      child: Container(
                                        height: 100 * 4 / 3,
                                        width: 100,
                                        child: Positioned.fill(
                                          child: PlayingCardView(
                                            card: serverCardToPlayingCard(e),
                                            showBack: true,
                                            elevation: 3.0,
                                            shape: cardShape,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ))
                              .fold<List<Widget>>(
                                  <Widget>[],
                                  (previousValue, element) =>
                                      previousValue..addAll(element)),
                        if (widget.data.centeredCard.isNotEmpty)
                          Positioned.fill(
                            child: Center(
                              child: Container(
                                height: 100 * 4 / 3,
                                width: 100 +
                                    (100 / 10) *
                                        widget.data.centeredCard.last.length,
                                // color: Colors.pink,
                                margin: EdgeInsets.only(bottom: 150),
                                child: widget.data.centeredCard.last.length > 1
                                    ? FlatCardFan(
                                        children: [
                                          ...widget.data.centeredCard.last.map(
                                            (e) => PlayingCardView(
                                              card: serverCardToPlayingCard(e),
                                              showBack: true,
                                              elevation: 3.0,
                                              shape: cardShape,
                                            ),
                                          )
                                        ],
                                      )
                                    : PlayingCardView(
                                        card: serverCardToPlayingCard(widget
                                            .data.centeredCard.last.first),
                                        showBack: true,
                                        elevation: 3.0,
                                        shape: cardShape,
                                      ),
                              ),
                            ),
                          ),
                        if (widget.data.claimedCard != null)
                          Positioned.fill(
                            child: Center(
                              child: Theme(
                                data: ThemeData.light(),
                                child: Builder(builder: (context) {
                                  return Container(
                                    height: 100 * 4 / 3,
                                    width: 100,
                                    // color: Colors.pink,
                                    margin: EdgeInsets.only(bottom: 450),
                                    child: PlayingCardView(
                                      card: serverCardToPlayingCard(
                                          widget.data.claimedCard!),
                                      showBack: false,
                                      elevation: 3.0,
                                      shape: cardShape,
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ),
                        ...List.generate(widget.gameData.players.length,
                                (index) => index)
                            .map(
                              (i) {
                                var curPIndex = widget.gameData.players
                                    .indexWhere((element) =>
                                        element.player.id ==
                                        GameClient.of(context)!.playerId);
                                var roatedList = rotateList(
                                    widget.gameData.players, curPIndex);

                                var e = roatedList[i];
                                bool isSelf = e.player.id ==
                                    GameClient.of(context)!.playerId;
                                var angle =
                                    2 * pi * (i / roatedList.length) + pi / 2;
                                var maxW =
                                    constrainsts.biggest.aspectRatio * 1000;
                                var maxH = 1000.0;
                                var maxOffset = Offset(maxW, maxH);
                                var radius = maxOffset.distance / 2;
                                var x = (radius * cos(angle))
                                        .clamp(-maxW / 2, maxW / 2) +
                                    maxW / 2;
                                var y = (radius * sin(angle))
                                        .clamp(-maxH / 2, maxH / 2) +
                                    maxH / 2;

                                var cardWidth = isSelf ? 550.0 : 250.0;
                                var cardHeight = cardWidth * (4 / 3);
                                x = x - cardWidth / 2;
                                y = y - cardHeight / 2;
                                x = x.clamp(0, maxW - cardWidth);
                                y = y.clamp(0, maxH - cardHeight);
                                return [
                                  // Positioned(
                                  //   top: y,
                                  //   left: x,
                                  //   child: Container(
                                  //     height: 50,
                                  //     width: 50,
                                  //     color:
                                  //         isSelf ? Colors.black : Colors.blue,
                                  //   ),
                                  // )

                                  ...List.generate(
                                      (e.data as RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BluffPlayerData)
                                          .cards
                                          .length,
                                      (index) => index).map(
                                    (index) {
                                      var cards = (e.data
                                              as RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BluffPlayerData)
                                          .cards;
                                      var card =
                                          serverCardToPlayingCard(cards[index]);
                                      var rotateAngle =
                                          ((index * 60 / cards.length) - 30) *
                                              pi /
                                              180;
                                      var maxRotateAngle =
                                          (((cards.length - 1) *
                                                      60 /
                                                      cards.length) -
                                                  30) *
                                              pi /
                                              180;
                                      var scale =
                                          (1 + cos(maxRotateAngle) - 0.3);
                                      bool isSelected = selectedCards.any(
                                        (c) =>
                                            c.suit == card.suit &&
                                            c.value == card.value,
                                      );
                                      return AnimatedPositioned(
                                        duration: Duration(milliseconds: 700),
                                        curve: Curves.easeOut,
                                        top: y.toDouble() -
                                            (isSelected
                                                ? 90 * sin(rotateAngle + pi / 2)
                                                : 0),
                                        left: x.toDouble() -
                                            (isSelected
                                                ? 90 * cos(rotateAngle + pi / 2)
                                                : 0),
                                        width: cardWidth,
                                        height: cardHeight,
                                        child: Container(
                                          // color: Colors.red,
                                          child: Theme(
                                            data: ThemeData.light(),
                                            child: Builder(builder: (context) {
                                              return GestureDetector(
                                                onTap: () {
                                                  if (isSelf && isCurrentMove) {
                                                    if (isSelected) {
                                                      setState(() {
                                                        selectedCards.removeWhere(
                                                            (element) =>
                                                                element.suit ==
                                                                    card.suit &&
                                                                element.value ==
                                                                    card.value);
                                                      });
                                                    } else {
                                                      setState(() {
                                                        selectedCards.add(card);
                                                      });
                                                    }
                                                  }
                                                },
                                                child: Transform.rotate(
                                                  angle: angle - pi / 2,
                                                  child: Transform.scale(
                                                    scale: 1.0 -
                                                        sin(maxRotateAngle) -
                                                        0.1,
                                                    alignment: FractionalOffset
                                                        .bottomCenter,
                                                    child: Transform(
                                                      transform:
                                                          Matrix4.rotationZ(
                                                              rotateAngle),
                                                      alignment:
                                                          FractionalOffset
                                                              .bottomCenter,
                                                      child: Container(
                                                        height: cardHeight,
                                                        width: cardWidth,
                                                        color:
                                                            Colors.transparent,
                                                        child: PlayingCardView(
                                                          card: card,
                                                          showBack: !isSelf,
                                                          elevation: 3.0,
                                                          shape: cardShape,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }),
                                          ),
                                        ),
                                      );
                                    },
                                  )
                                ];
                              },
                            )
                            .toList()
                            .fold<List<Widget>>(
                                <Widget>[],
                                (previousValue, element) =>
                                    previousValue..addAll(element)),
                        Positioned.fill(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: selectedCards.isNotEmpty
                                      ? () {
                                          deal();
                                        }
                                      : null,
                                  child: Text('Deal'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    pass();
                                  },
                                  child: Text('Pass'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    flip();
                                  },
                                  child: Text('Flip'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    voteEndTurn();
                                  },
                                  child: Text('Vote end round'),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  pass() async {
    var result = await GameClient.of(context)!.artemisClient.execute(
          BluffPlayerPassQuery(
            variables: BluffPlayerPassArguments(
              roomId: widget.roomId,
              playerId: GameClient.of(context)!.playerId,
            ),
          ),
        );
    return result;
  }

  voteEndTurn() async {
    var result = await GameClient.of(context)!.artemisClient.execute(
          BluffPlayerVoteRoundEndQuery(
            variables: BluffPlayerVoteRoundEndArguments(
              roomId: widget.roomId,
              playerId: GameClient.of(context)!.playerId,
            ),
          ),
        );
    return result;
  }

  flip() async {
    var result = await GameClient.of(context)!.artemisClient.execute(
          BluffPlayerFlipQuery(
            variables: BluffPlayerFlipArguments(
              roomId: widget.roomId,
              playerId: GameClient.of(context)!.playerId,
            ),
          ),
        );
    return result;
  }

  deal() async {
    PlayingCard toClaim = widget.data.claimedCard != null
        ? serverCardToPlayingCard(widget.data.claimedCard!)
        : await showDialog(
            context: context,
            builder: (context) {
              return CardSelector(cardShape: cardShape);
            },
          );
    if (toClaim != null) {
      var result = await GameClient.of(context)!.artemisClient.execute(
            BluffPlayerDealQuery(
              variables: BluffPlayerDealArguments(
                cards: selectedCards.map((e) => numOfPlayingCard(e)).toList(),
                claim: numOfPlayingCard(toClaim),
                roomId: widget.roomId,
                playerId: GameClient.of(context)!.playerId,
              ),
            ),
          );
      selectedCards.clear();
      setState(() {});
      return result;
    }
  }

  openCards(RoomFieldsMixin$RoomState$GameData$GamePlayer player) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(),
        body: Container(
          child: RadialCardFan(
            isSelf: true,
            children: [
              ...(player.data
                      as RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BluffPlayerData)
                  .cards
                  .map(
                    (i) => serverCardToPlayingCard(i),
                  )
            ],
          ),
        ),
      ),
    ));
  }
}

class CardSelector extends StatefulWidget {
  const CardSelector({
    Key? key,
    required this.cardShape,
  }) : super(key: key);

  final ShapeBorder cardShape;

  @override
  State<CardSelector> createState() => _CardSelectorState();
}

class _CardSelectorState extends State<CardSelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Dialog(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Claim jas'),
            Container(
              height: 100 * 4 / 3,
              child: Scrollbar(
                scrollbarOrientation: ScrollbarOrientation.bottom,
                isAlwaysShown: true,
                child: ListView(
                  // shrinkWrap: true,

                  scrollDirection: Axis.horizontal,
                  children: [
                    ...[Suit.spades]
                        .map(
                      (suit) => CardValue.values.map(
                        (value) => Container(
                          width: 100,
                          height: 100 * 4 / 3,
                          child: Theme(
                            data: ThemeData.light(),
                            child: Builder(builder: (context) {
                              return InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pop(PlayingCard(suit, value));
                                },
                                child: PlayingCardView(
                                  card: PlayingCard(suit, value),
                                  elevation: 3.0,
                                  shape: widget.cardShape,
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    )
                        .fold<List<Widget>>(
                      [],
                      (previousValue, element) =>
                          previousValue..addAll(element),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RadialCardFan extends StatefulWidget {
  final List<PlayingCard> children;
  final bool isSelf;
  RadialCardFan({required this.children, required this.isSelf});

  @override
  State<RadialCardFan> createState() => _RadialCardFanState();
}

class _RadialCardFanState extends State<RadialCardFan> {
  ShapeBorder cardShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: BorderSide(color: Colors.black, width: 1));

  PlayingCard? focusedCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          ...List.generate(widget.children.length, (index) => index).map(
            (e) => Positioned(
              child: GestureDetector(
                onTap: () {},
                child: Transform.translate(
                  offset: Offset(0, -30),
                  child: Transform.scale(
                    scale: (1 - cos(60 * pi / 180) - 0.05) *
                        (focusedCard == widget.children[e] ? 1.1 : 1),
                    alignment: FractionalOffset.bottomCenter,
                    child: Transform.rotate(
                      angle:
                          ((e * 60 / widget.children.length) - 30) * pi / 180,
                      child: Theme(
                        data: ThemeData.light(),
                        child: Builder(
                          builder: (context) {
                            return Container(
                              color: Colors.transparent,
                              child: PlayingCardView(
                                card: widget.children[e],
                                showBack: !widget.isSelf,
                                elevation: 3.0,
                                shape: cardShape,
                              ),
                            );
                          },
                        ),
                      ),
                      alignment: FractionalOffset.bottomCenter,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

PlayingCard serverCardToPlayingCard(ServerCard card) {
  Suit? suit;
  switch (card.color) {
    case CardColor.spade:
      suit = Suit.spades;
      break;
    case CardColor.heart:
      suit = Suit.hearts;
      break;
    case CardColor.club:
      suit = Suit.clubs;
      break;
    case CardColor.diamond:
      suit = Suit.diamonds;
      break;
    default:
      break;
  }
  CardValue? value;
  switch (card.number) {
    case CardNum.ace:
      value = CardValue.ace;
      break;
    case CardNum.two:
      value = CardValue.two;
      break;
    case CardNum.three:
      value = CardValue.three;
      break;
    case CardNum.four:
      value = CardValue.four;
      break;
    case CardNum.five:
      value = CardValue.five;
      break;
    case CardNum.six:
      value = CardValue.six;
      break;
    case CardNum.seven:
      value = CardValue.seven;
      break;
    case CardNum.eight:
      value = CardValue.eight;
      break;
    case CardNum.nine:
      value = CardValue.nine;
      break;
    case CardNum.ten:
      value = CardValue.ten;
      break;
    case CardNum.jack:
      value = CardValue.jack;
      break;
    case CardNum.queen:
      value = CardValue.queen;
      break;
    case CardNum.king:
      value = CardValue.king;
      break;
    default:
      break;
  }
  return PlayingCard(suit!, value!);
}

int numOfPlayingCard(PlayingCard card) {
  var out = 0;
  switch (card.value) {
    case CardValue.two:
      out = 1;
      break;
    case CardValue.three:
      out = 2;
      break;
    case CardValue.four:
      out = 3;
      break;
    case CardValue.five:
      out = 4;
      break;
    case CardValue.six:
      out = 5;
      break;
    case CardValue.seven:
      out = 6;
      break;
    case CardValue.eight:
      out = 7;
      break;
    case CardValue.nine:
      out = 8;
      break;
    case CardValue.ten:
      out = 9;
      break;
    case CardValue.jack:
      out = 10;
      break;
    case CardValue.queen:
      out = 11;
      break;
    case CardValue.king:
      out = 12;
      break;
    case CardValue.ace:
      out = 0;
      break;
  }
  switch (card.suit) {
    case Suit.spades:
      out += 13 * 0;
      break;
    case Suit.hearts:
      out += 13 * 1;
      break;
    case Suit.diamonds:
      out += 13 * 3;
      break;
    case Suit.clubs:
      out += 13 * 2;
      break;
  }
  return out;
}

List<T> rotateList<T>(List<T> list, int v) {
  if (list.isEmpty) return list;
  var i = v % list.length;
  return list.sublist(i)..addAll(list.sublist(0, i));
}

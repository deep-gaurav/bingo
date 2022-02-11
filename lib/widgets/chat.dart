import 'dart:async';

import 'package:bingo/api/api.graphql.dart';
import 'package:bingo/networking/clientProvider.dart';
import 'package:chat_bubbles/bubbles/bubble_normal.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatefulWidget {
  final Widget child;
  final String roomId;
  ChatWidget({required this.child, required this.roomId, Key? key})
      : super(key: key);

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  var pos = Offset(0, 0);

  List<GameMessages$Subscription$ServerResponse$ChatMessage> chatMessages = [];

  late Timer t;
  GameMessages$Subscription$ServerResponse$ChatMessage? msg;
  bool hiddenRecent = true;

  @override
  void initState() {
    super.initState();
    t = Timer(Duration(seconds: 3), () {
      hiddenRecent = true;
    });

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      GameClient.of(context)!.stream.stream.listen(
        (event) {
          if (event.data?.serverMessages
              is GameMessages$Subscription$ServerResponse$ChatMessage) {
            var data = event.data?.serverMessages
                as GameMessages$Subscription$ServerResponse$ChatMessage;
            if (mounted) {
              setState(() {
                chatMessages.add(data);
                msg = data;
                t.cancel();
                hiddenRecent = false;
                t = Timer(Duration(seconds: 3), () {
                  hiddenRecent = true;
                });
              });
            }
          }
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        StatefulBuilder(builder: (context, setState2) {
          return AnimatedPositioned(
            duration: Duration(
              milliseconds: 200,
            ),
            curve: Curves.ease,
            top: pos.dy,
            left: pos.dx,
            child: GestureDetector(
              onPanUpdate: (details) {
                setState2(() {
                  pos += details.delta;
                });
              },
              onPanCancel: () {
                setState2(() {
                  if (pos.dx > MediaQuery.of(context).size.width / 2) {
                    pos =
                        Offset(MediaQuery.of(context).size.width - 60, pos.dy);
                  } else {
                    pos = Offset(10, pos.dy);
                  }
                });
              },
              onPanEnd: (details) {
                setState2(() {
                  if (pos.dx > MediaQuery.of(context).size.width / 2) {
                    pos =
                        Offset(MediaQuery.of(context).size.width - 60, pos.dy);
                  } else {
                    pos = Offset(10, pos.dy);
                  }
                });
              },
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      opaque: false,
                      barrierColor: Colors.black.withOpacity(0.7),
                      barrierDismissible: true,
                      pageBuilder: (context, _, __) => ChatWindow(
                        roomId: widget.roomId,
                        chatMessages: chatMessages,
                      ),
                    ),
                  );
                },
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    ChatBubbleWidget(),
                    if (msg != null)
                      Positioned(
                        left: pos.dx > MediaQuery.of(context).size.width / 2
                            ? null
                            : 40,
                        right: pos.dx > MediaQuery.of(context).size.width / 2
                            ? 50
                            : null,
                        child: AnimatedOpacity(
                          opacity: hiddenRecent ? 0 : 1,
                          duration: Duration(seconds: 1),
                          child: Container(
                            child: BubbleSpecialTwo(
                              text: msg!.message,
                              isSender: false,
                              tail: false,
                            ),
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ),
          );
        }),
      ],
    );
  }
}

class ChatWindow extends StatefulWidget {
  final String roomId;
  final List<GameMessages$Subscription$ServerResponse$ChatMessage> chatMessages;
  const ChatWindow({
    required this.roomId,
    required this.chatMessages,
    Key? key,
  }) : super(key: key);

  @override
  State<ChatWindow> createState() => _ChatWindowState();
}

class _ChatWindowState extends State<ChatWindow> {
  List<GameMessages$Subscription$ServerResponse$ChatMessage> chatMessages = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      GameClient.of(context)!.stream.stream.listen(
        (event) {
          if (event.data?.serverMessages
              is GameMessages$Subscription$ServerResponse$ChatMessage) {
            var data = event.data?.serverMessages
                as GameMessages$Subscription$ServerResponse$ChatMessage;
            if (mounted) {
              setState(() {
                chatMessages.add(data);
              });
            }
          }
        },
      );
    });

    chatMessages.addAll(widget.chatMessages);
  }

  TextEditingController controller = TextEditingController();
  sendChat() async {
    if (controller.text.trim().isNotEmpty) {
      var result = await GameClient.of(context)!.artemisClient.execute(
            ChatMutation(
              variables: ChatArguments(
                playerId: GameClient.of(context)!.playerId,
                roomId: widget.roomId,
                message: controller.text.trim(),
              ),
            ),
          );
      if (!result.hasErrors) {
        controller.clear();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.6),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                ChatBubbleWidget(),
                Expanded(
                  child: Dialog(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 10),
                        Expanded(
                          child: Container(
                            child: ListView(
                              reverse: true,
                              children: [
                                ...List.generate(chatMessages.length, (i) => i)
                                    .map(
                                  (i) {
                                    var e = chatMessages[i];
                                    var showName = true;
                                    if (i > 1) {
                                      if (chatMessages[i - 1].player.id ==
                                          chatMessages[i].player.id) {
                                        showName = false;
                                      }
                                    }
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        if (e.player.id !=
                                                GameClient.of(context)!
                                                    .playerId &&
                                            showName)
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 20, right: 20),
                                            child: Text(
                                              e.player.name,
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        BubbleNormal(
                                          text: e.message,
                                          isSender: e.player.id ==
                                              GameClient.of(context)!.playerId,
                                        ),
                                      ],
                                    );
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        IntrinsicHeight(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxHeight: 100,
                                  ),
                                  child: TextField(
                                    controller: controller,
                                    autofocus: true,
                                    autocorrect: true,
                                    maxLines: null,
                                    keyboardType: TextInputType.multiline,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Message',
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  sendChat();
                                },
                                iconSize: 20,
                                padding: EdgeInsets.all(2),
                                icon: Icon(Icons.send),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChatBubbleWidget extends StatelessWidget {
  const ChatBubbleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'chat',
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.chat_bubble),
      ),
    );
  }
}

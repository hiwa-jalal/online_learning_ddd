import 'dart:io';

import 'package:bubble/bubble.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:dash_chat/dash_chat.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/features/chat/domain/entities/message_entity.dart';
import 'package:online_learning/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';
import 'package:online_learning/features/user/presentation/bloc/user_auth_bloc.dart';

class ChatPage extends StatefulWidget {
  final UserEntity userEntity;

  const ChatPage({
    Key key,
    @required this.userEntity,
  }) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  File _image;
  UserEntity get user => widget.userEntity;
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final chatBloc = context.read<ChatBloc>();
    chatBloc.add(ChatEvent.getAllMessages());
    return BlocBuilder<UserAuthBloc, UserAuthState>(builder: (context, state) {
      return SafeArea(
        child: Scaffold(
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {
          //     context.read<ChatBloc>().add(
          //           ChatEvent.sendMessage(
          //             message: '3',
          //             fromUserId: widget.userEntity.id,
          //           ),
          //         );
          //   },
          // ),
          body: BlocBuilder<ChatBloc, ChatState>(
            builder: (context, state) {
              return state.map(
                initial: (state) => CircularProgressIndicator(),
                allMessagesLoaded: (state) {
                  // final messages = state.allMessages
                  //     .map(
                  //       (msg) => ChatMessage(
                  //         text: msg.message,
                  //         user: ChatUser(
                  //           uid: msg.fromUserId,
                  //         ),
                  //         image: msg.imageUrl,
                  //       ),
                  //     )
                  //     .toList();
                  // return _CustomDashChat(
                  //   user: user,
                  //   chatBloc: chatBloc,
                  //   messages: messages,
                  // );

                  final messages = state.allMessages
                      .map(
                        (message) {
                          return _CustomChatBubble(
                            message: message,
                            user: user,
                          );
                        },
                      )
                      .toList()
                      .reversed
                      .toList();
                  return Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.9,
                                // flex: 5,
                                child: ListView(
                                  padding: const EdgeInsets.all(8),
                                  controller: _scrollController,
                                  children: messages,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: _SendMessageTextField(
                              chatBloc: chatBloc,
                              user: user,
                              chatListController: _scrollController,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                messageFailure: (state) => Text('Failed to load messages'),
              );
            },
          ),
        ),
      );
    });
  }
}

class _CustomChatBubble extends StatelessWidget {
  static const styleSomebody = BubbleStyle(
    nip: BubbleNip.leftCenter,
    color: Colors.white,
    borderColor: Colors.blue,
    borderWidth: 1,
    margin: BubbleEdges.only(top: 8, right: 50),
    alignment: Alignment.topLeft,
  );

  static const styleMe = BubbleStyle(
    nip: BubbleNip.rightCenter,
    color: Color.fromARGB(255, 225, 255, 199),
    borderColor: Colors.blue,
    borderWidth: 1,
    margin: BubbleEdges.only(top: 8, left: 50),
    alignment: Alignment.topRight,
  );

  const _CustomChatBubble({
    Key key,
    @required this.message,
    @required this.user,
  }) : super(key: key);

  final MessageEntity message;
  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return message.fromUserId == user.id
        ? _ChatRowMe(
            message: message,
            user: user,
            styleMe: styleMe,
          )
        : _ChatRowSomebody(
            message: message,
            user: user,
            styleSomebody: styleSomebody,
          );
  }
}

class _ChatRowMe extends StatelessWidget {
  const _ChatRowMe({
    Key key,
    @required this.message,
    @required this.user,
    @required this.styleMe,
  }) : super(key: key);

  final MessageEntity message;
  final UserEntity user;
  final BubbleStyle styleMe;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Bubble(
          child: Text(message.message),
          style: styleMe,
        ),
        CircleAvatar(
          child: Text('H'),
        ),
      ],
    );
  }
}

class _ChatRowSomebody extends StatelessWidget {
  const _ChatRowSomebody({
    Key key,
    @required this.message,
    @required this.user,
    @required this.styleSomebody,
  }) : super(key: key);

  final MessageEntity message;
  final UserEntity user;
  final BubbleStyle styleSomebody;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          child: Text('H'),
        ),
        Bubble(
          child: Text(message.message),
          style: styleSomebody,
        ),
      ],
    );
  }
}

class _SendMessageTextField extends StatefulWidget {
  const _SendMessageTextField({
    Key key,
    @required this.chatBloc,
    @required this.user,
    @required this.chatListController,
  }) : super(key: key);

  final ChatBloc chatBloc;
  final UserEntity user;
  final ScrollController chatListController;

  @override
  __SendMessageTextFieldState createState() => __SendMessageTextFieldState();
}

class __SendMessageTextFieldState extends State<_SendMessageTextField> {
  final _controller = TextEditingController();

  var msg = '';
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onChanged: (val) => msg = val.trim(),
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(Icons.send),
          onPressed: () {
            widget.chatBloc.add(
              ChatEvent.sendMessage(
                message: msg,
                fromUserId: widget.user.id,
              ),
            );
            // to referesh the messages
            widget.chatBloc.add(ChatEvent.getAllMessages());
            _controller.clear();
            widget.chatListController.animateTo(
                widget.chatListController.position.maxScrollExtent,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn);
          },
        ),
      ),
    );
  }
}

class _CustomDashChat extends StatefulWidget {
  const _CustomDashChat({
    Key key,
    @required this.user,
    @required this.chatBloc,
    @required this.messages,
  }) : super(key: key);

  final UserEntity user;
  final ChatBloc chatBloc;
  final List<ChatMessage> messages;

  @override
  __CustomDashChatState createState() => __CustomDashChatState();
}

class __CustomDashChatState extends State<_CustomDashChat> {
  File _image;
  Future getNewImage() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.image);
    if (result != null) {
      _image = File(result.files.single.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DashChat(
      messageImageBuilder: (url, [_]) {
        return CachedNetworkImage(
          imageUrl: url,
          placeholder: (context, str) => CircularProgressIndicator(),
          fit: BoxFit.fill,
        );
      },
      chatFooterBuilder: () => IconButton(
        icon: Icon(Icons.image),
        onPressed: getNewImage,
      ),
      inverted: true,
      user: ChatUser(
        uid: widget.user.id,
        firstName: widget.user.fullName,
        color: Colors.yellow,
      ),
      onSend: (msg) {
        widget.chatBloc.add(
          ChatEvent.sendMessage(
            message: msg.text,
            fromUserId: msg.user.uid,
          ),
        );
        // to referesh the messages
        widget.chatBloc.add(ChatEvent.getAllMessages());
      },
      messages: widget.messages,
    );
  }
}

import 'dart:async';

import 'package:dash_chat/dash_chat.dart';
import 'package:flutter/material.dart';
import 'package:yteach/Utils/CColors.dart';
import 'package:yteach/Utils/CustomDialog.dart';
import 'package:yteach/Utils/CustomDialog2.dart';
import 'package:yteach/Utils/DashChat2.dart';
import 'package:yteach/Utils/ScreenConfig.dart';
import 'package:yteach/Utils/Strings.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final GlobalKey<DashChatState> _chatViewKey = GlobalKey<DashChatState>();

  final ChatUser user = ChatUser(
    name: "Fayeed",
    firstName: "Fayeed",
    lastName: "Pawaskar",
    uid: "12345678",
    avatar: profilePhoto,
  );

  final ChatUser otherUser = ChatUser(
    name: "Mrfatty",
    uid: "25649654",
  );

  List<ChatMessage> messages = [];
  var m = [];

  var i = 0;

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      showDialog<void>(
        context: context,
        barrierDismissible: false,
        // user must tap button!
        builder: (BuildContext context) {
          return CustomDialogBox2(
            title: "All messages are monitored by the school administrator.",
            subTitle:
                "Good to know but here's something to keep in mind. How you present yourself on the chat is a reflection of you. So why not make a killer first impression? Whether you're a tutor or a student, please be respectful. ",
            buttonText: "Ok",
            onPress: () {
              Navigator.pop(context);
            },
          );
        },
      );
    });
  }

  void systemMessage() {
    Timer(Duration(milliseconds: 300), () {
      if (i < 6) {
        setState(() {
          messages = [...messages, m[i]];
        });
        i++;
      }
      Timer(Duration(milliseconds: 300), () {
        _chatViewKey.currentState.scrollController
          ..animateTo(
            _chatViewKey.currentState.scrollController.position.maxScrollExtent,
            curve: Curves.easeOut,
            duration: const Duration(milliseconds: 300),
          );
      });
    });
  }

  void onSend(ChatMessage message) async {
    // print(message.toJson());
    // var documentReference = Firestore.instance
    //     .collection('messages')
    //     .document(DateTime.now().millisecondsSinceEpoch.toString());
    //
    // await Firestore.instance.runTransaction((transaction) async {
    //   await transaction.set(
    //     documentReference,
    //     message.toJson(),
    //   );
    // });
    setState(() {
      messages = [...messages, message];
      print(messages.length);
    });

    if (i == 0) {
      systemMessage();
      Timer(Duration(milliseconds: 600), () {
        systemMessage();
      });
    } else {
      systemMessage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_outlined)),
        title: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(profilePhoto),
              radius: 20,
            ),
            Text(
              "Request Lesson",
              style: TextStyle(
                  fontFamily: "BaiJamjuree",
                  color: CColors.yTeachWhite,
                  fontSize: ScreenConfig.fontSizeSmall),
            ),
          ],
        ),
        backgroundColor: CColors.yTeachBlueGrey,
      ),
      body: StreamBuilder(
          // stream: Firestore.instance.collection('messages').snapshots(),
          builder: (context, snapshot) {
        // if (!snapshot.hasData) {
        //   return Center(
        //     child: CircularProgressIndicator(
        //       valueColor: AlwaysStoppedAnimation<Color>(
        //         Theme
        //             .of(context)
        //             .primaryColor,
        //       ),
        //     ),
        //   );
        // }
        // else {
        //   List<DocumentSnapshot> items = snapshot.data.documents;
        //   var messages =
        //   items.map((i) => ChatMessage.fromJson(i.data)).toList();
        return Column(
          children: [
            Container(
              width: ScreenConfig.screenWidth,
              color: Colors.grey,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                width: ScreenConfig.screenWidth * 0.85,
                height: 60,
                child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (_) => LoginPage()));
                    },
                    child: Text("REQUEST LESSON"),
                    style: ElevatedButton.styleFrom(
                        primary: CColors.primaryButtonColor)),
              ),
            ),
            Expanded(
              child: DashChat2(
                

                messageDecorationBuilder: (ChatMessage msg, bool isUser) {
                  return BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                    bottomLeft:  Radius.circular(10),
                        topLeft: Radius.circular(10)),
                    color: CColors.primaryButtonColor, // example
                  );
                },
                key: _chatViewKey,
                inverted: false,
                onSend: onSend,
                sendOnEnter: true,
                textInputAction: TextInputAction.send,
                user: user,
                inputDecoration:
                    InputDecoration.collapsed(hintText: "Add message here..."),
                dateFormat: DateFormat('yyyy-MMM-dd'),
                timeFormat: DateFormat('HH:mm'),
                messages: messages,
                showUserAvatar: true,
                avatarBuilder: myUser,
                showAvatarForEveryMessage: false,
                scrollToBottom: true,
                onPressAvatar: (ChatUser user) {
                  print("OnPressAvatar: ${user.name}");
                },
                onLongPressAvatar: (ChatUser user) {
                  print("OnLongPressAvatar: ${user.name}");
                },
                inputMaxLines: 5,
                messageContainerPadding: EdgeInsets.only(left: 5.0, right: 5.0),
                alwaysShowSend: true,
                inputTextStyle: TextStyle(fontSize: 16.0),
                inputContainerStyle: BoxDecoration(
                  border: Border.all(width: 0.0),
                  color: Colors.white,
                ),
                onQuickReply: (Reply reply) {
                  setState(() {
                    messages.add(ChatMessage(
                        text: reply.value,
                        createdAt: DateTime.now(),
                        user: user));

                    messages = [...messages];
                  });

                  Timer(Duration(milliseconds: 300), () {
                    _chatViewKey.currentState.scrollController
                      ..animateTo(
                        _chatViewKey.currentState.scrollController.position
                            .maxScrollExtent,
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 300),
                      );

                    if (i == 0) {
                      systemMessage();
                      Timer(Duration(milliseconds: 600), () {
                        systemMessage();
                      });
                    } else {
                      systemMessage();
                    }
                  });
                },
                onLoadEarlier: () {
                  print("laoding...");
                },
                shouldShowLoadEarlier: false,
                showTraillingBeforeSend: true,
                trailing: <Widget>[
                  IconButton(
                    icon: Icon(Icons.photo),
                    onPressed: () async {
                      // File result = await ImagePicker.pickImage(
                      //   source: ImageSource.gallery,
                      //   imageQuality: 80,
                      //   maxHeight: 400,
                      //   maxWidth: 400,
                      // );
                      //
                      // if (result != null) {
                      //   final StorageReference storageRef =
                      //   FirebaseStorage.instance.ref().child("chat_images");
                      //
                      //   StorageUploadTask uploadTask = storageRef.putFile(
                      //     result,
                      //     StorageMetadata(
                      //       contentType: 'image/jpg',
                      //     ),
                      //   );
                      //   StorageTaskSnapshot download =
                      //   await uploadTask.onComplete;
                      //
                      //   String url = await download.ref.getDownloadURL();
                      //
                      //   ChatMessage message =
                      //   ChatMessage(text: "", user: user, image: url);
                      //
                      //   var documentReference = Firestore.instance
                      //       .collection('messages')
                      //       .document(DateTime.now()
                      //       .millisecondsSinceEpoch
                      //       .toString());
                      //
                      //   Firestore.instance.runTransaction((transaction) async {
                      //     await transaction.set(
                      //       documentReference,
                      //       message.toJson(),
                      //     );
                      //   });
                      // }
                    },
                  )
                ],
              ),
            )
          ],
        );
        // }
      }),
    );
  }

  Widget myUser(ChatUser chatUser) {
    return CircleAvatar(
      backgroundImage: AssetImage(user.avatar),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:yteach/Utils/CColors.dart';
import 'package:yteach/Utils/ScreenConfig.dart';
import 'package:lipsum/lipsum.dart' as lipsum;
import 'package:yteach/Utils/Strings.dart';
import 'package:yteach/view/ChatScreen.dart';

class ChatHomeScreen extends StatefulWidget {
  @override
  _ChatHomeScreenState createState() => _ChatHomeScreenState();
}

class _ChatHomeScreenState extends State<ChatHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        leading: Container(),
        title: Center(
          child: Text(
            "Chats",
            style: TextStyle(
                fontFamily: "BaiJamjuree",
                color: CColors.yTeachWhite,
                fontWeight: FontWeight.bold,
                fontSize: ScreenConfig.fontSizelarge),
          ),
        ),
        backgroundColor: CColors.yTeachBlueGrey,
      ),
      body: Container(
        height: ScreenConfig.screenHeight,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  CColors.primaryColorgrade2,
                  CColors.primaryColorgrade3
                ])),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell( onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>ChatScreen()));

          },
            child: ListView.builder(itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical:2.0),
                child: chatCard(
                    title: "Camila Correa",
                    imgUrl: logo,
                    subtitle: "Great tutoring skills !",
                    timestamp: "10 sec"),
              );
            }, itemCount: 10,),
          )
        ),
      ),
    );
  }

  Widget chatCard(
      {@required imgUrl,
      @required String title,
      @required String subtitle,
      @required String timestamp}) {
    return Container(
      height: 150,
      width: ScreenConfig.screenWidth,
      color: CColors.yTeachWhite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom:10, right: 20, left:5),
            child: CircleAvatar(
              radius: 32,
              foregroundColor: Colors.red,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(profilePhoto),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$title",
                style: TextStyle(
                    fontSize: ScreenConfig.fontSize4Xlarge,
                    fontFamily: "BaiJamjuree"), textAlign: TextAlign.start,
              ),
              Text(
                "$subtitle",
                style: TextStyle(
                    fontSize: ScreenConfig.fontSizeMedium,
                    fontFamily: "BaiJamjuree"),textAlign:TextAlign.start,
              )
            ],
          ),
          Spacer(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "$timestamp ago",
                  style: TextStyle(
                      fontSize: ScreenConfig.fontSizeMedium,
                      fontFamily: "BaiJamjuree"),
                ),
              ),
              Spacer()
            ],
          )
        ],
      ),
    );
  }
}

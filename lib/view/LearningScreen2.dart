import 'package:flutter/material.dart';
import 'package:yteach/Utils/CColors.dart';
import 'package:yteach/Utils/ScreenConfig.dart';


class LearningScreen2 extends StatefulWidget {
  @override
  _LearningScreen2State createState() => _LearningScreen2State();
}

class _LearningScreen2State extends State<LearningScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: ScreenConfig.screenHeight,
        width: ScreenConfig.screenWidth,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  CColors.primaryColorgrade1,
                  CColors.primaryColorgrade4
                ])),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                "Ready to share\nsome knowledge?",
                style: TextStyle(
                    fontFamily: "BaiJamjuree",
                    color: CColors.yTeachWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenConfig.fontSize7Xlarge),
                textAlign: TextAlign.start,),
              SizedBox(height: 10,),

              Text(
                "No Lesson have been added\nLet your fellow students know your are available to tutor.",
                style: TextStyle(
                    fontFamily: "BaiJamjuree",
                    color: CColors.yTeachWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenConfig.fontSizeMedium),
              ),

              SizedBox(height: ScreenConfig.screenWidth * 0.2,),
              Center(
                child: Container(
                  margin: EdgeInsets.only(
                    bottom: 30,
                  ),
                  width: ScreenConfig.screenWidth * 0.85,
                  height: 60,
                  child: ElevatedButton(
                      onPressed: () {


                      },
                      child: Text("TUTOR PROFILE"),
                      style: ElevatedButton.styleFrom(
                          primary: CColors.primaryButtonColor)),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}

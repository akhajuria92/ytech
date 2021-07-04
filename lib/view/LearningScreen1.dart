import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:yteach/Utils/CColors.dart';
import 'package:yteach/Utils/ScreenConfig.dart';
import 'package:yteach/Utils/Strings.dart';
import 'package:yteach/view/LessonScreen.dart';

class LearningScreen1 extends StatefulWidget {
  @override
  _LearningScreen1State createState() => _LearningScreen1State();
}

class _LearningScreen1State extends State<LearningScreen1> {
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
              CColors.primaryColorgrade2,
              CColors.primaryColorgrade3
            ])),
        child: showScreen(2),
      ),
    );
  }

  showScreen(int state) {
    switch (state) {
      case 1:
        {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  "Start\nLearning",
                  style: TextStyle(
                      fontFamily: "BaiJamjuree",
                      color: CColors.yTeachWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenConfig.fontSize7Xlarge),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "No Lesson have been added\n Find a tutor and search by subject to start your\n first session.",
                  style: TextStyle(
                      fontFamily: "BaiJamjuree",
                      color: CColors.yTeachWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenConfig.fontSizeMedium),
                ),
                SizedBox(
                  height: ScreenConfig.screenWidth * 0.2,
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(
                      bottom: 30,
                    ),
                    width: ScreenConfig.screenWidth * 0.85,
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (_) => LoginPage()));
                        },
                        child: Text("FIND A TUTOR"),
                        style: ElevatedButton.styleFrom(
                            primary: CColors.primaryButtonColor)),
                  ),
                ),
              ],
            ),
          );
        }
        break;

      case 2:
        {
          return ListView.builder(
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => LessonScreen(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      color: CColors.yTeachWhite,
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 16),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Algebra II",
                                    style: TextStyle(
                                        fontFamily: "BaiJamjuree",
                                        fontSize: ScreenConfig.fontSizeXXXlarge,
                                        color: CColors.yTeachBlueGrey),
                                  ),
                                  Text(
                                    "with Gustavo Espinoza",
                                    style: TextStyle(
                                        fontFamily: "BaiJamjuree",
                                        fontSize: ScreenConfig.fontSizeXlarge,
                                        color: CColors.yTeachBlueGrey),
                                  ),
                                ],
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),
                              Spacer(),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 2,
                                height: 70,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                      CColors.primaryColorgrade2,
                                      CColors.primaryColorgrade3
                                    ])),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "Thu jan 30",
                                      style: TextStyle(
                                          fontFamily: "BaiJamjuree",
                                          color: CColors.yTeachBlueGrey,
                                          fontWeight: FontWeight.bold,
                                          fontSize: ScreenConfig.fontSizeSmall),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "3:30",
                                          style: TextStyle(
                                              fontFamily: "BaiJamjuree",
                                              color: CColors.primaryButtonColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize:
                                                  ScreenConfig.fontSizeXXlarge),
                                        ),
                                        Text(
                                          "PM",
                                          style: TextStyle(
                                              fontFamily: "BaiJamjuree",
                                              color: CColors.primaryButtonColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize:
                                                  ScreenConfig.fontSizeMedium),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "50 min",
                                      style: TextStyle(
                                          fontFamily: "BaiJamjuree",
                                          color: CColors.primaryButtonColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              ScreenConfig.fontSizeXSmall),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          // border: Border.all(),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5))),
                      child: Center(
                        child: Text(
                          "PENDING",
                          style: TextStyle(
                              fontFamily: "BaiJamjuree",
                              color: CColors.yTeachWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenConfig.fontSizeXSmall),
                        ),
                      ),
                      // color: Colors.cyan,
                      width: 60,
                      height: 18,
                    ),
                    alignment: Alignment.topRight,
                  )
                ],
              );

              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                color: CColors.yTeachWhite,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Algebra II",
                              style: TextStyle(
                                  fontFamily: "BaiJamjuree",
                                  fontSize: ScreenConfig.fontSizeXXXlarge,
                                  color: CColors.yTeachBlueGrey),
                            ),
                            Text(
                              "with Gustavo Espinoza",
                              style: TextStyle(
                                  fontFamily: "BaiJamjuree",
                                  fontSize: ScreenConfig.fontSizeXlarge,
                                  color: CColors.yTeachBlueGrey),
                            ),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Thu jan 30",
                                style: TextStyle(
                                    fontFamily: "BaiJamjuree",
                                    color: CColors.yTeachBlueGrey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: ScreenConfig.fontSizeSmall),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "3:30",
                                    style: TextStyle(
                                        fontFamily: "BaiJamjuree",
                                        color: CColors.primaryButtonColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: ScreenConfig.fontSizeXXlarge),
                                  ),
                                  Text(
                                    "PM",
                                    style: TextStyle(
                                        fontFamily: "BaiJamjuree",
                                        color: CColors.primaryButtonColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: ScreenConfig.fontSizeMedium),
                                  ),
                                ],
                              ),
                              Text(
                                "50 min",
                                style: TextStyle(
                                    fontFamily: "BaiJamjuree",
                                    color: CColors.primaryButtonColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: ScreenConfig.fontSizeXSmall),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: 5,
          );
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }
  }
}

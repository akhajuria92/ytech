import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yteach/Utils/CColors.dart';
import 'package:yteach/Utils/ScreenConfig.dart';
import 'package:yteach/view/LearningScreen1.dart';
import 'package:yteach/view/LearningScreen2.dart';

class LearningHomeScreen extends StatefulWidget {


  LearningHomeScreen();

  @override
  _LearningHomeScreenState createState() => _LearningHomeScreenState();
}

class _LearningHomeScreenState extends State<LearningHomeScreen> {
  int segmentedControlGroupValue = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(    appBar: AppBar(
      titleSpacing: 0.0,
      leading: Container(),
      toolbarHeight: 90,
      leadingWidth: 0.0,
      title: Center(
        child: Column(
          children: [
            Text(
              "Lesson",
              style: TextStyle(
                  fontFamily: "BaiJamjuree",
                  color: CColors.yTeachWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenConfig.fontSizelarge),
            ),
            Container(
              width: 250,
              margin: EdgeInsets.only(bottom: 20, top: 10),
              child: CupertinoSegmentedControl(
                  borderColor: Colors.white,
                  selectedColor: CColors.yTeachWhite,
                  unselectedColor: CColors.primaryButtonColor,
                  groupValue: segmentedControlGroupValue,
                  children: {
                    0: Text(
                      "Learning",
                      style: TextStyle(
                          fontFamily: "BaiJamjuree",
                          fontSize: ScreenConfig.fontSizeMedium),
                    ),
                    1: Text(
                      "Teaching",
                      style: TextStyle(
                          fontFamily: "BaiJamjuree",
                          fontSize: ScreenConfig.fontSizeMedium),
                    )
                  },
                  onValueChanged: (i) {
                    setState(() {
                      segmentedControlGroupValue = i;
                    });
                  }),
            ),
            Container(
              width: double.infinity,
              height: 10,
              color: CColors.purple,
            ),
          ],
        ),
      ),
      backgroundColor: CColors.primaryButtonColor,
    ),
    body:   Container(
      child: showView(segmentedControlGroupValue),
    ),

    );





  }

  Widget showView(int index) {
    switch (index) {
      case 0:
        {
          return LearningScreen1();
        }
        break;

      case 1:
        {
          return LearningScreen2();
        }
        break;

      default:
        {
          return Container();
        }
        break;
    }
  }
}

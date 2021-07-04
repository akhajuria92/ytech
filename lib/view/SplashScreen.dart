import 'package:flutter/material.dart';
import 'package:yteach/Utils/CColors.dart';
import 'package:yteach/Utils/ScreenConfig.dart';
import 'package:yteach/Utils/Strings.dart';
import 'package:yteach/view/StartupScreens/LoginPage.dart';
// import 'file:///C:/Users/Netscape%20Flutter/Desktop/YTeach%20App/YTeach/yteach/lib/view/StartupScreens/LoginPage.dart';

import '../main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: ScreenConfig.screenWidth,
          height: ScreenConfig.screenHeight,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              CColors.primaryColorgrade2,
              CColors.primaryColorgrade3,
            ],
          )),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: ScreenConfig.screenHeight * 0.05),
                  child: Image.asset(
                    logo,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: ScreenConfig.screenHeight * 0.05, bottom: 8.0),
                  child: Text(
                    "$INTROLINE1",
                    style: TextStyle(
                        fontSize: ScreenConfig.fontSizeXXlarge,
                        fontFamily: "BaiJamjuree",
                        fontWeight: FontWeight.w400,
                        color: CColors.yTeachWhite),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 20),
                  child: Text(
                    "$INTROLINE2",
                    style: TextStyle(
                        fontSize: ScreenConfig.fontSizeXXlarge,
                        fontFamily: "BaiJamjuree",
                        fontWeight: FontWeight.w400,
                        color: CColors.yTeachWhite),
                  ),
                ),
                Spacer(),
                Container( width:ScreenConfig.screenWidth * 0.7 ,
                  child: Image.asset(
                    schoolLogo,

                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 70, top: 40),
                  width: ScreenConfig.screenWidth * 0.85,
                  height: 60,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(_)=>LoginPage()));

                      },
                      child: Text("$LETSGO"),
                      style: ElevatedButton.styleFrom(
                          primary: CColors.primaryButtonColor)),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:yteach/Utils/CColors.dart';
import 'package:yteach/Utils/ScreenConfig.dart';
import 'package:lipsum/lipsum.dart' as lipsum;
import 'package:yteach/Utils/Strings.dart';

import 'package:yteach/view/CustomerSupport.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        leading: Container(),
        title: Center(
          child: Text(
            "Profile",
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
            child: ListView(
              children: [
                Container(
                  height: 120,
                  color: CColors.yTeachWhite,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 10,
                        color: CColors.purple,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: InkWell(
                          onTap: () {

                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Account",
                                    style: TextStyle(
                                        fontSize: ScreenConfig.fontSize4Xlarge,
                                        fontFamily: "BaiJamjuree"),
                                    textAlign: TextAlign.start,
                                  ),
                                  Text(
                                    "Evan Rodiguez",
                                    style: TextStyle(
                                        fontSize: ScreenConfig.fontSizeMedium,
                                        fontFamily: "BaiJamjuree"),
                                    textAlign: TextAlign.start,
                                  )
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15.0, bottom: 10, right: 20, left: 5),
                                child: CircleAvatar(
                                  radius: 32,
                                  foregroundColor: Colors.red,
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(profilePhoto),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  color: CColors.yTeachWhite,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 10,
                        color: CColors.purple,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: InkWell(
                          onTap: () {

                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Tutor Profile",
                                    style: TextStyle(
                                        fontSize: ScreenConfig.fontSizeXXlarge,
                                        fontFamily: "BaiJamjuree"),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15.0, bottom: 10, right: 20, left: 5),
                                child: CircleAvatar(
                                  radius: 32,
                                  foregroundColor: Colors.red,
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(logo),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 90,
                  color: CColors.yTeachWhite,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: InkWell(
                      onTap: (){ },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Why Tutor?",
                                style: TextStyle(
                                    fontSize: ScreenConfig.fontSizeXlarge,
                                    fontFamily: "BaiJamjuree"),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, left: 30),
                            child: CircleAvatar(
                              radius: 22,
                              foregroundColor: Colors.red,
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(logo),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 90,
                  color: CColors.yTeachWhite,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: InkWell( onTap: (){


                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => CustomerSupport()));

                    },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Customer Support",
                                style: TextStyle(
                                    fontSize: ScreenConfig.fontSizeXlarge,
                                    fontFamily: "BaiJamjuree"),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, left: 30),
                            child: CircleAvatar(
                              radius: 22,
                              foregroundColor: Colors.red,
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(logo),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 90,
                  color: CColors.yTeachWhite,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Why Tutor?",
                              style: TextStyle(
                                  fontSize: ScreenConfig.fontSizeXlarge,
                                  fontFamily: "BaiJamjuree"),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 30),
                          child: CircleAvatar(
                            radius: 22,
                            foregroundColor: Colors.red,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(logo),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 90,
                  color: CColors.yTeachWhite,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Rate this app",
                              style: TextStyle(
                                  fontSize: ScreenConfig.fontSizeXlarge,
                                  fontFamily: "BaiJamjuree"),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 30),
                          child: CircleAvatar(
                            radius: 22,
                            foregroundColor: Colors.red,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(logo),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    height: 90,
                    color: CColors.yTeachWhite,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Terms & Conditions",
                        style: TextStyle(
                            fontSize: ScreenConfig.fontSizeXlarge,
                            fontFamily: "BaiJamjuree"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    height: 90,
                    color: CColors.yTeachWhite,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Privacy Policy",
                        style: TextStyle(
                            fontSize: ScreenConfig.fontSizeXlarge,
                            fontFamily: "BaiJamjuree"),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  Widget chatCard(
      {@required imgUrl,
      @required String title,
      @required String subtitle,
      @required String timestamp}) {}
}

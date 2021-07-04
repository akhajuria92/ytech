
import 'package:flutter/material.dart';
import 'package:yteach/Utils/CColors.dart';
import 'package:yteach/Utils/ScreenConfig.dart';
import 'package:lipsum/lipsum.dart' as lipsum;
import 'package:yteach/Utils/Strings.dart';
import 'package:yteach/view/StartLessonNowScreen.dart';

class LessonScreen extends StatefulWidget {
  LessonScreen();

  @override
  _LessonScreenState createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  TextEditingController siginControiller1 = TextEditingController();
  // TextEditingController siginControiller2 = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    siginControiller1.text = "CANCEL LESSON";
    // siginControiller2.text = "CANCEL";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_outlined)),
          title: Text(
            "Request Lesson",
            style: TextStyle(
                fontFamily: "BaiJamjuree",
                color: CColors.yTeachWhite,
                fontWeight: FontWeight.bold,
                fontSize: ScreenConfig.fontSizelarge),
          ),
          backgroundColor: CColors.yTeachBlueGrey,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 10,
                  color: CColors.purple,
                ),
                Container(
                  // margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "CalCuls",
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
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      "Tue Nov 24",
                                      style: TextStyle(
                                          fontFamily: "BaiJamjuree",
                                          fontSize: ScreenConfig.fontSizeXlarge,
                                          fontWeight: FontWeight.bold,
                                          color: CColors.purple),
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "6:47",
                                          style: TextStyle(
                                              fontFamily: "BaiJamjuree",
                                              color: CColors.purple,
                                              fontWeight: FontWeight.bold,
                                              fontSize:
                                                  ScreenConfig.fontSizeXXlarge),
                                        ),
                                      ),
                                      Text(
                                        "PM",
                                        style: TextStyle(
                                            fontFamily: "BaiJamjuree",
                                            color: CColors.purple,
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                                ScreenConfig.fontSizeMedium),
                                      ),
                                    ],
                                  ),
                                ],
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),
                              Spacer(),
                              CircleAvatar(
                                radius: 42,
                                foregroundColor: Colors.red,
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(profilePhoto),
                                ),
                              ),
                            ],
                          )),
                      Container(
                        width: ScreenConfig.screenWidth,
                        height: 60,
                        color: Colors.green.shade300,
                        child: Center(
                          child: Text(
                            "Waiting for the tutor to accept your request",
                            style: TextStyle(
                                color: CColors.yTeachWhite,
                                fontSize: ScreenConfig.fontSizelarge,
                                fontFamily: "Proxima",
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      Center(
                        child: Text(
                          "TIME LEFT",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: ScreenConfig.fontSizeMedium,
                              fontFamily: "Proxima",
                              fontWeight: FontWeight.bold),
                        ),
                      ), SizedBox(height: 10,),
                      Center(
                        child:Text("50:00", style: TextStyle(color: Colors.cyan, fontFamily: "Proxima",fontSize: ScreenConfig.fontSize11Xlarge),),
                      ),
                      SizedBox(height: ScreenConfig.screenHeight*0.07,),
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5, top: 30),
                          width: ScreenConfig.screenWidth * 0.85,
                          height: 60,
                          child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder:(_)=>LoginPage()));
                              },
                              child: Text("EXTENDED TIMER"),
                              style: ElevatedButton.styleFrom(
                                  primary: CColors.primaryButtonColor)),
                        ),
                      ),    Center(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5, top: 10),
                          width: ScreenConfig.screenWidth * 0.85,
                          height: 60,
                          child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder:(_)=>LoginPage()));
                              },
                              child: Text("COMPLETE SESSION"),
                              style: ElevatedButton.styleFrom(
                                  primary: CColors.primaryButtonColor)),
                        ),
                      ),


                      // SizedBox(
                      //   height: 10,
                      // ),
                      // Container(
                      //   margin: EdgeInsets.only(bottom: 20, top: 30),
                      //   width: ScreenConfig.screenWidth * 0.85,
                      //   height: 60,
                      //   child: ElevatedButton(
                      //       onPressed: () {
                      //         // Navigator.push(context, MaterialPageRoute(builder:(_)=>LoginPage()));
                      //       },
                      //       child: Text("REQUEST LESSON"),
                      //       style: ElevatedButton.styleFrom(
                      //           primary: CColors.primaryButtonColor)),
                      // ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            // Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (_) => StartLessonNowScreen(),
                            //   ),
                            // );
                            // Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (_) => LoginPage(),),);
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            width: ScreenConfig.screenWidth * 0.85,
                            child: TextFormField(
                              enabled: false,
                              readOnly: true,
                              textAlign: TextAlign.center,
                              controller: siginControiller1,
                              style: TextStyle(color: CColors.primaryButtonColor),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.transparent,
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7)),
                                  borderSide: BorderSide(
                                      color: CColors.primaryButtonColor,
                                      width: 2.5),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7)),
                                  borderSide: BorderSide(
                                      color: CColors.primaryButtonColor,
                                      width: 2.5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7)),
                                  borderSide: BorderSide(
                                      color: CColors.primaryButtonColor,
                                      width: 2.5),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7)),
                                  borderSide: BorderSide(
                                      color: CColors.primaryButtonColor,
                                      width: 2.5),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: 20,
                      // ),
                      // InkWell(
                      //   onTap: () {},
                      //   child: Container(
                      //     margin: EdgeInsets.only(top: 10),
                      //     width: ScreenConfig.screenWidth * 0.85,
                      //     child: TextFormField(
                      //       enabled: false,
                      //       readOnly: true,
                      //       textAlign: TextAlign.center,
                      //       controller: siginControiller2,
                      //       style: TextStyle(color: CColors.primaryButtonColor),
                      //       decoration: InputDecoration(
                      //         filled: true,
                      //         fillColor: Colors.transparent,
                      //         border: OutlineInputBorder(
                      //           borderRadius:
                      //               BorderRadius.all(Radius.circular(7)),
                      //           borderSide: BorderSide(
                      //               color: CColors.primaryButtonColor,
                      //               width: 2.5),
                      //         ),
                      //         enabledBorder: OutlineInputBorder(
                      //           borderRadius:
                      //               BorderRadius.all(Radius.circular(7)),
                      //           borderSide: BorderSide(
                      //               color: CColors.primaryButtonColor,
                      //               width: 2.5),
                      //         ),
                      //         focusedBorder: OutlineInputBorder(
                      //           borderRadius:
                      //               BorderRadius.all(Radius.circular(7)),
                      //           borderSide: BorderSide(
                      //               color: CColors.primaryButtonColor,
                      //               width: 2.5),
                      //         ),
                      //         disabledBorder: OutlineInputBorder(
                      //           borderRadius:
                      //               BorderRadius.all(Radius.circular(7)),
                      //           borderSide: BorderSide(
                      //               color: CColors.primaryButtonColor,
                      //               width: 2.5),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 20,
                      // ),
                      // Text(
                      //   "The lesson will begun once the tutor accepts.",
                      //   style: TextStyle(
                      //       fontFamily: "BaiJamjuree",
                      //       fontSize: ScreenConfig.fontSizeMedium),
                      // ),
                      //
                      // Container(
                      //   margin: EdgeInsets.only(bottom: 20, top: 30),
                      //   width: ScreenConfig.screenWidth * 0.85,
                      //   height: 60,
                      //   child: ElevatedButton(
                      //       onPressed: () {
                      //         // Navigator.push(context, MaterialPageRoute(builder:(_)=>LoginPage()));
                      //       },
                      //       child: Text("START LESSON NOW"),
                      //       style: ElevatedButton.styleFrom(
                      //           primary: CColors.primaryButtonColor)),
                      // ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

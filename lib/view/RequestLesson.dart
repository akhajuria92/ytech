
import 'package:flutter/material.dart';
import 'package:yteach/Utils/CColors.dart';
import 'package:yteach/Utils/ScreenConfig.dart';
import 'package:lipsum/lipsum.dart' as lipsum;
import 'package:yteach/Utils/Strings.dart';
import 'package:yteach/view/StartLessonNowScreen.dart';

class RequestLesson extends StatefulWidget {
  RequestLesson();

  @override
  _RequestLessonState createState() => _RequestLessonState();
}

class _RequestLessonState extends State<RequestLesson> {
  TextEditingController siginControiller1 = TextEditingController();
  TextEditingController siginControiller2 = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    siginControiller1.text = "SCHEDULE LESSON";
    siginControiller2.text = "CANCEL";
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
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(margin: EdgeInsets.symmetric(vertical:10),
                          child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Algebra II",
                                style: TextStyle(
                                    fontFamily: "BaiJamjuree",
                                    fontSize: ScreenConfig.fontSizeXXXlarge, color: CColors.yTeachBlueGrey),
                              ),Text(
                                "with Gustavo Espinoza",
                                style: TextStyle(
                                    fontFamily: "BaiJamjuree",
                                    fontSize: ScreenConfig.fontSizeXlarge, color: CColors.yTeachBlueGrey),
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
                      SizedBox(height: ScreenConfig.screenHeight*0.3,),

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
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => StartLessonNowScreen(),),);
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
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {

                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
                          width: ScreenConfig.screenWidth * 0.85,
                          child: TextFormField(
                            enabled: false,
                            readOnly: true,
                            textAlign: TextAlign.center,
                            controller: siginControiller2,
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
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "The lesson will begun once the tutor accepts.",
                        style: TextStyle(
                            fontFamily: "BaiJamjuree",
                            fontSize: ScreenConfig.fontSizeMedium),
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 20, top: 30),
                        width: ScreenConfig.screenWidth * 0.85,
                        height: 60,
                        child: ElevatedButton(
                            onPressed: () {
                              // Navigator.push(context, MaterialPageRoute(builder:(_)=>LoginPage()));
                            },
                            child: Text("START LESSON NOW"),
                            style: ElevatedButton.styleFrom(
                                primary: CColors.primaryButtonColor)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

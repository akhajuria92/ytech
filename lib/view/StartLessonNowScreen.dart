

import 'package:flutter/material.dart';
import 'package:yteach/Utils/CColors.dart';
import 'package:yteach/Utils/CustomDialog.dart';
import 'package:yteach/Utils/ScreenConfig.dart';
import 'package:lipsum/lipsum.dart' as lipsum;
import 'package:yteach/Utils/Strings.dart';

class StartLessonNowScreen extends StatefulWidget {
  StartLessonNowScreen();

  @override
  _StartLessonNowScreenState createState() => _StartLessonNowScreenState();
}

class _StartLessonNowScreenState extends State<StartLessonNowScreen> {
  TextEditingController siginControiller1 = TextEditingController();
  TextEditingController siginControiller2 = TextEditingController();
  TextEditingController siginControiller3 = TextEditingController();
  var nowDate = DateTime.now();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    siginControiller1.text = "CANCEL";
    siginControiller2.text = "minutes";
    siginControiller3.text = "hour(s)";
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
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          "DATE OF SESSION",
                          style: TextStyle(
                              fontSize: ScreenConfig.fontSizeSmall,
                              fontFamily: "BaiJamjuree",
                              fontWeight: FontWeight.w400,
                              color: CColors.primaryButtonColor),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // DateTimePicker(
                          //   initialValue: '  ',
                          //   firstDate: DateTime(2000),
                          //   lastDate: DateTime(2100),
                          //   dateLabelText: 'Date',
                          //   onChanged: (val) => print(val),
                          //   validator: (val) {
                          //     print(val);
                          //     return null;
                          //   },
                          //   onSaved: (val) => print(val),
                          // );
                        },
                        child: TextFormField(
                          readOnly: true,
                          enabled: false,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: CColors.yTeachWhite,
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7)),
                              borderSide: BorderSide(
                                  color: CColors.yTeachWhite, width: 5.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          "LENGTH OF SESSION",
                          style: TextStyle(
                              fontSize: ScreenConfig.fontSizeSmall,
                              fontFamily: "BaiJamjuree",
                              fontWeight: FontWeight.w400,
                              color: CColors.primaryButtonColor),
                        ),
                      ),
                      TextFormField(
                        keyboardType:
                            TextInputType.numberWithOptions(signed: false),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: CColors.yTeachWhite,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            borderSide: BorderSide(
                                color: CColors.yTeachWhite, width: 5.0),
                          ),
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

                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
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
                                  controller: siginControiller2,
                                  style: TextStyle(
                                      color: CColors.primaryButtonColor),
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
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
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
                                  controller: siginControiller3,
                                  style: TextStyle(
                                      color: CColors.primaryButtonColor),
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
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
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

                      Container(
                        margin: EdgeInsets.only(bottom: 20, top: 30),
                        width: ScreenConfig.screenWidth * 0.85,
                        height: 60,
                        child: ElevatedButton(
                            onPressed: () {
                              showDialog<void>(
                                context: context,
                                barrierDismissible: false,
                                // user must tap button!
                                builder: (BuildContext context) {
                                  return CustomDialogBox(
                                    title: "Lesson created successfully.",
                                    buttonText: "Ok",
                                    onPress: () {
                                      Navigator.pop(context);
                                    },
                                  );
                                },
                              );
                              // Navigator.push(context, MaterialPageRoute(builder:(_)=>LoginPage()));
                            },
                            child: Text("REQUEST LESSON"),
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

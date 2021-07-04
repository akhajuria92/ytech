
import 'package:flutter/material.dart';
import 'package:yteach/Utils/CColors.dart';
import 'package:yteach/Utils/ScreenConfig.dart';
import 'package:lipsum/lipsum.dart' as lipsum;
import 'package:yteach/Utils/Strings.dart';
import 'package:yteach/view/RequestLesson.dart';

class TutorialProfile extends StatefulWidget {
  final String tutorName;

  TutorialProfile({@required this.tutorName});

  @override
  _TutorialProfileState createState() => _TutorialProfileState();
}

class _TutorialProfileState extends State<TutorialProfile> {
  List<Map<String, dynamic>> tutorList = [
    {"name": "Matias Test Account", "image_url": profilePhoto, "visible": true},
    {"name": "Paul Briz", "image_url": profilePhoto, "visible": false},
    {"name": "Gustavo Espinosa", "image_url": profilePhoto, "visible": true},
  ];
  TextEditingController siginControiller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    siginControiller.text = "MESSAGE";
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
            "Tutor Profile",
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
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "${widget.tutorName}",
                          style: TextStyle(
                              fontFamily: "BaiJamjuree",
                              fontSize: ScreenConfig.fontSize8Xlarge),
                        ),
                      ),
                      Container(
                        width: ScreenConfig.screenWidth * 0.9,
                        height: 10,
                        color: CColors.purple,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "GRADE:  1",
                        style: TextStyle(
                            fontFamily: "BaiJamjuree",
                            fontSize: ScreenConfig.fontSizeSmall,
                            fontWeight: FontWeight.bold,
                            color: CColors.primaryButtonColor),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "LESSON TAUGHT:  30",
                        style: TextStyle(
                            fontFamily: "BaiJamjuree",
                            fontSize: ScreenConfig.fontSizeSmall,
                            fontWeight: FontWeight.bold,
                            color: CColors.primaryButtonColor),
                      ),
                      SizedBox(height: 30,),
                      Center(
                        child: Image.asset(profilePhoto)
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20, top: 30),
                        width: ScreenConfig.screenWidth * 0.85,
                        height: 60,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder:(_)=>RequestLesson()));
                            },
                            child: Text("REQUEST LESSON"),
                            style: ElevatedButton.styleFrom(
                                primary: CColors.primaryButtonColor)),
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
                            controller: siginControiller,
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
                        height: 30,
                      ),
                      Text(
                        "ABOUT",
                        style: TextStyle(
                            fontFamily: "BaiJamjuree",
                            fontSize: ScreenConfig.fontSizeSmall,
                            fontWeight: FontWeight.bold,
                            color: CColors.primaryButtonColor),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "sdfiodshisdljfdsf",
                        style: TextStyle(
                            fontFamily: "BaiJamjuree",
                            fontSize: ScreenConfig.fontSizeSmall),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

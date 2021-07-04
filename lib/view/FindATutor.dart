import 'package:flutter/material.dart';
import 'package:yteach/Utils/CColors.dart';
import 'package:yteach/Utils/ScreenConfig.dart';
import 'package:lipsum/lipsum.dart' as lipsum;
import 'package:yteach/Utils/Strings.dart';
import 'package:yteach/view/SubjectScreen.dart';

class FindATutor extends StatefulWidget {
  @override
  _FindATutorState createState() => _FindATutorState();
}

class _FindATutorState extends State<FindATutor> {
  List<String> recentSubjects = [
    "Ethics",
    "English 1",
    "Calculus",
    "Algebra II",
    "Algebra"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 0,
          leading: Container(),
          title: Center(
            child: Text(
              "Find a Tutor",
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

          child: Column(
            children: [
              Container(
                width: ScreenConfig.screenWidth,
                height: 10,
                color: CColors.purple,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Subject",
                      style: TextStyle(
                          fontFamily: "BaiJamjuree",
                          color: CColors.purple,
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenConfig.fontSizelarge),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: false,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                          hintText: "Find a subject",
                          hintStyle: TextStyle(
                              fontFamily: "BaiJamjuree",
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenConfig.fontSizelarge),
                          filled: true,
                          fillColor: CColors.yTeachWhite,
                          border: InputBorder.none),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "RECENT SEARCHES",
                      style: TextStyle(
                          fontFamily: "BaiJamjuree",
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenConfig.fontSizeMedium),
                    ),
                    Container(
                      height: ScreenConfig.screenHeight*0.59,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => SubjectScreen(
                                              subjectName: recentSubjects
                                                  .elementAt(index),
                                            )));
                              },
                              child: Text(
                                "${recentSubjects.elementAt(index)}",
                                style: TextStyle(
                                    fontFamily: "BaiJamjuree",
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.bold,
                                    fontSize: ScreenConfig.fontSizelarge),
                              ),
                            ),
                          );
                        },
                        itemCount: recentSubjects.length,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
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
            padding: const EdgeInsets.only(
                top: 15.0, bottom: 10, right: 20, left: 5),
            child: CircleAvatar(
              radius: 32,
              foregroundColor: Colors.red,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(imgUrl),
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
                    fontFamily: "BaiJamjuree"),
                textAlign: TextAlign.start,
              ),
              Text(
                "$subtitle",
                style: TextStyle(
                    fontSize: ScreenConfig.fontSizeMedium,
                    fontFamily: "BaiJamjuree"),
                textAlign: TextAlign.start,
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


import 'package:flutter/material.dart';
import 'package:yteach/Utils/CColors.dart';
import 'package:yteach/Utils/ScreenConfig.dart';
import 'package:lipsum/lipsum.dart' as lipsum;
import 'package:yteach/Utils/Strings.dart';
import 'package:yteach/view/TutorialProfile.dart';

class SubjectScreen extends StatefulWidget {
  final String subjectName;

  SubjectScreen({@required this.subjectName});

  @override
  _SubjectScreenState createState() => _SubjectScreenState();
}

class _SubjectScreenState extends State<SubjectScreen> {
  List<Map<String, dynamic>> tutorList = [
    {"name": "Matias Test Account", "image_url": profilePhoto, "visible": true},
    {"name": "Paul Briz", "image_url": profilePhoto, "visible": false},
    {"name": "Gustavo Espinosa", "image_url": profilePhoto, "visible": true},
  ];

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
            "${widget.subjectName}",
            style: TextStyle(
                fontFamily: "BaiJamjuree",
                color: CColors.yTeachWhite,
                fontWeight: FontWeight.bold,
                fontSize: ScreenConfig.fontSizelarge),
          ),
          backgroundColor: CColors.yTeachBlueGrey,
        ),
        body: Container(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 10,
                    color: CColors.purple,
                  ),
                  Container(
                    height: ScreenConfig.screenHeight * 0.78,
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => TutorialProfile(
                                        tutorName: tutorList
                                            .elementAt(index)["name"])));
                          },
                          child: customCard(
                              name: tutorList.elementAt(index)["name"],
                              imageUrl: tutorList.elementAt(index)["image_url"],
                              visibilty: tutorList.elementAt(index)["visible"]),
                        );
                      },
                      itemCount: tutorList.length,
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }

  Widget customCard({String name, String imageUrl, bool visibilty}) {
    return Container(
        height: 100,
        child: Card(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "$name",
                  style: TextStyle(
                      fontFamily: "BaiJamjuree",
                      fontSize: ScreenConfig.fontSizelarge),
                ),
              ),
              Spacer(),
              Padding(
                  padding: const EdgeInsets.only(
                      top: 15.0, bottom: 10, right: 20, left: 5),
                  child: Container(
                    width: 80,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 32,
                          foregroundColor: Colors.red,
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(imageUrl),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Visibility(
                            visible: visibilty,
                            child: Stack(
                              children: [
                                Image.asset(
                                  heartIcon,
                                  height: 25,
                                ),
                                Positioned(
                                  child: Text(
                                    "20",
                                    style: TextStyle(
                                        fontSize: ScreenConfig.fontSizeXSmall,
                                        color: CColors.yTeachWhite,
                                        fontFamily: "BaiJamjuree"),
                                  ),
                                  top: 5,
                                  right: 5,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ));
  }
}

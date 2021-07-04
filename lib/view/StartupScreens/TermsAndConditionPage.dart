import 'package:flutter/material.dart';
import 'package:yteach/Utils/CColors.dart';
import 'package:yteach/Utils/ScreenConfig.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

class TermsAndConditionPage extends StatefulWidget {
  @override
  _TermsAndConditionPageState createState() => _TermsAndConditionPageState();
}

class _TermsAndConditionPageState extends State<TermsAndConditionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.chevron_left_outlined,
              size: 40,
            )),
        title: Row(
          children: [
            Spacer(),
            Text(
              "Terms & Conditions",
              style: TextStyle(
                  fontFamily: "BaiJamjuree",
                  color: CColors.yTeachWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenConfig.fontSizelarge),
            ),
            Spacer()
          ],
        ),
        backgroundColor: CColors.yTeachBlueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "TERMS OF USE",
              style: TextStyle(
                  fontFamily: "BaiJamjuree",
                  color: CColors.yTeachBlueGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenConfig.fontSizelarge),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "LAST UPDATED: 23/04/2019",
              style: TextStyle(
                  fontFamily: "BaiJamjuree",
                  color: CColors.yTeachBlueGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenConfig.fontSizelarge),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "INTRODUCTION",
              style: TextStyle(
                  fontFamily: "BaiJamjuree",
                  color: CColors.yTeachBlueGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenConfig.fontSizelarge),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "${lipsum.createParagraph(numParagraphs: 2)}",
              style: TextStyle(
                  fontFamily: "BaiJamjuree",
                  color: CColors.yTeachBlueGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenConfig.fontSizelarge),
            ),
          ],
        )),
      ),
    );
  }
}

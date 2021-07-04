import 'package:flutter/material.dart';
import 'package:yteach/Utils/CColors.dart';
import 'package:yteach/Utils/ScreenConfig.dart';
import 'package:lipsum/lipsum.dart' as lipsum;
class PrivacyPolicy extends StatefulWidget {
  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(onTap: (){
          print("aerweqerwqr");
          Navigator.pop(context);
        }, child: Container(width: double.maxFinite,height: double.maxFinite, child: Icon(Icons.chevron_left_outlined, size: 40,))),

        title: Row(
          children: [
            Spacer(),
            Text(
              "Privacy Policy ",
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
        child: Container(child: Text(
          "${lipsum.createParagraph(numParagraphs: 2)}",
          style: TextStyle(
              fontFamily: "BaiJamjuree",
              color: CColors.yTeachBlueGrey,
              fontWeight: FontWeight.bold,
              fontSize: ScreenConfig.fontSizelarge),
        ),),
      ),
    );
  }
}

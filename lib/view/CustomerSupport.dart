import 'package:flutter/material.dart';
import 'package:yteach/Utils/CColors.dart';
import 'package:yteach/Utils/ScreenConfig.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

class CustomerSupport extends StatefulWidget {
  @override
  _CustomerSupportState createState() => _CustomerSupportState();
}

class _CustomerSupportState extends State<CustomerSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              print("aerweqerwqr");
              Navigator.pop(context);
            },
            child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                child: Icon(
                  Icons.chevron_left_outlined,
                  size: 40,
                ))),
        title: Text(
          "Customer Support",
          style: TextStyle(
              fontFamily: "BaiJamjuree",
              color: CColors.yTeachWhite,
              fontWeight: FontWeight.bold,
              fontSize: ScreenConfig.fontSizelarge),
        ),
        backgroundColor: CColors.yTeachBlueGrey,
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Stack(
            children: [
              Container(
                height: ScreenConfig.screenHeight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),


                    Text(
                      "${lipsum.createParagraph(numParagraphs: 1)}",
                      style: TextStyle(
                          fontFamily: "BaiJamjuree",
                          color: CColors.yTeachBlueGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenConfig.fontSizelarge),
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Container(
                  margin: EdgeInsets.only(
                    bottom: 30,
                  ),
                  width: ScreenConfig.screenWidth * 0.85,
                  height: 60,
                  child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (_) => LoginPage()));
                      },
                      child: Text("SEND FEEDBACK"),
                      style: ElevatedButton.styleFrom(
                          primary: CColors.primaryButtonColor)),
                ),
                bottom: 0 ,right: 0, left: 0,
              ),
            ],
          )),
    );
  }
}

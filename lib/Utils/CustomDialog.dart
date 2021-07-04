import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yteach/Utils/CColors.dart';
import 'package:yteach/Utils/ScreenConfig.dart';

class CustomDialogBox extends StatefulWidget {
  final String title, buttonText;
  final Function onPress;

  const CustomDialogBox(
      {Key key,@required this.title, @required this.buttonText, @required this.onPress})
      : super(key: key);

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(1),
            // boxShadow: [
            //   BoxShadow(color: Colors.black,offset: Offset(0,10),
            //       blurRadius: 10
            //   ),
            // ]
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: ScreenConfig.screenWidth,
                height: 10,
                color: CColors.primaryButtonColor,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                widget.title,
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: ScreenConfig.screenWidth * 0.85,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: widget.onPress,
                      child: Text("${widget.buttonText}"),
                      style: ElevatedButton.styleFrom(
                          primary: CColors.primaryButtonColor)),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 10,
          right: 10,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 10,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.asset("assets/model.jpeg")),
          ),
        ),
      ],
    );
  }
}

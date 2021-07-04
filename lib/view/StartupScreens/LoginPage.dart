import 'package:flutter/material.dart';
import 'package:yteach/Utils/CColors.dart';
import 'package:yteach/Utils/CustomDialog.dart';
import 'package:yteach/Utils/ScreenConfig.dart';
import 'package:yteach/Utils/Strings.dart';
import 'package:yteach/view/StartupScreens/CreateAccountScreen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController createAccountController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    createAccountController.text = "CREATE AN ACCOUNT";
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: ScreenConfig.screenHeight,
            width: ScreenConfig.screenWidth,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                  CColors.primaryColorgrade2,
                  CColors.primaryColorgrade3
                ])),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: ScreenConfig.screenWidth,
                    height: 10,
                    color: CColors.purple,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 26, right: 10),
                    child: Row(
                      children: [
                        Spacer(),
                        Image.asset(
                          onlyLogo,
                          height: 60,
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: ScreenConfig.fontSize7Xlarge,
                        fontFamily: "BaiJamjuree",
                        fontWeight: FontWeight.w400,
                        color: CColors.yTeachWhite),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      "$SIGINLINE",
                      style: TextStyle(
                          fontSize: ScreenConfig.fontSizeMedium,
                          fontFamily: "BaiJamjuree",
                          fontWeight: FontWeight.w400,
                          color: CColors.yTeachWhite),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "EMAIL",
                      style: TextStyle(
                          fontSize: ScreenConfig.fontSizeSmall,
                          fontFamily: "BaiJamjuree",
                          fontWeight: FontWeight.w400,
                          color: CColors.yTeachWhite),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: CColors.yTeachWhite,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide:
                            BorderSide(color: CColors.yTeachWhite, width: 5.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "PASSWORD",
                      style: TextStyle(
                          fontSize: ScreenConfig.fontSizeSmall,
                          fontFamily: "BaiJamjuree",
                          fontWeight: FontWeight.w400,
                          color: CColors.yTeachWhite),
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: CColors.yTeachWhite,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide:
                            BorderSide(color: CColors.yTeachWhite, width: 5.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 16),
                    child: Row(
                      children: [
                        Spacer(),
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                              fontSize: ScreenConfig.fontSizelarge,
                              fontFamily: "Karla",
                              fontWeight: FontWeight.bold,
                              color: CColors.yTeachWhite),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 5,
                    ),
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
                                title: "sfsdsd",
                                buttonText: "Ok",
                                onPress: () {
                                  Navigator.pop(context);
                                },
                              );
                            },
                          );

                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (_) => LoginPage()));
                        },
                        child: Text("SIGN IN"),
                        style: ElevatedButton.styleFrom(
                            primary: CColors.primaryButtonColor)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 10),
                    child: Row(
                      children: [
                        Spacer(),
                        Text(
                          "or",
                          style: TextStyle(
                              fontSize: ScreenConfig.fontSizelarge,
                              fontFamily: "Karla",
                              fontWeight: FontWeight.bold,
                              color: CColors.yTeachWhite),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {

                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>CreateAccountScreen()));


                    },
                    child: TextFormField(
                      enabled: false,
                      readOnly: true,
                      textAlign: TextAlign.center,
                      controller: createAccountController,
                      style: TextStyle(color: CColors.yTeachWhite),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.transparent,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          borderSide: BorderSide(
                              color: CColors.yTeachWhite, width: 2.5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          borderSide: BorderSide(
                              color: CColors.yTeachWhite, width: 2.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          borderSide: BorderSide(
                              color: CColors.yTeachWhite, width: 2.5),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          borderSide: BorderSide(
                              color: CColors.yTeachWhite, width: 2.5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

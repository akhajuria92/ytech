import 'package:flutter/material.dart';
import 'package:yteach/Utils/CColors.dart';
import 'package:yteach/Utils/CustomDialog.dart';
import 'package:yteach/Utils/ScreenConfig.dart';
import 'package:yteach/Utils/Strings.dart';
import 'package:yteach/view/DashBoard.dart';
import 'package:yteach/view/StartupScreens/LoginPage.dart';
import 'package:yteach/view/StartupScreens/PrivacyPolicy.dart';
import 'package:yteach/view/StartupScreens/TermsAndConditionPage.dart';

class CreateAccountScreen extends StatefulWidget {
  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  var _chosenValue;
  TextEditingController siginControiller = TextEditingController();
  bool isVisible = false;

  @override
  void initState() {
    siginControiller.text = "Already have an account? SIGN IN ";
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 40),
                  color: CColors.yTeachWhite,
                  child: Stack(
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Image.asset(headerImage),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 30.0,
                                    ),
                                    child: Text(
                                      "In oder to access your school's account.\n you will need to register with your school's \n email address",
                                      style: TextStyle(
                                          fontFamily: "BaiJamjuree",
                                          color: CColors.primaryButtonColor),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 10.0,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "FIRST NAME",
                                              style: TextStyle(
                                                  fontFamily: "Karla",
                                                  color: CColors
                                                      .primaryButtonColor,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: ScreenConfig
                                                      .fontSizeSmall),
                                            ),
                                            Spacer()
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 5),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: Colors.grey.shade100,
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(7)),
                                                borderSide: BorderSide(
                                                    color: Colors.white,
                                                    width: 5.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "LAST NAME",
                                            style: TextStyle(
                                                fontFamily: "Karla",
                                                color:
                                                    CColors.primaryButtonColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize:
                                                    ScreenConfig.fontSizeSmall),
                                          ),
                                          Spacer()
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 5),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.grey.shade100,
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(7)),
                                              borderSide: BorderSide(
                                                  color: Colors.white,
                                                  width: 5.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "SCHOOL",
                                            style: TextStyle(
                                                fontFamily: "Karla",
                                                color:
                                                    CColors.primaryButtonColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize:
                                                    ScreenConfig.fontSizeSmall),
                                          ),
                                          Spacer()
                                        ],
                                      ),
                                      Container(
                                          margin: const EdgeInsets.only(
                                              top: 10, bottom: 5),
                                          width: ScreenConfig.screenWidth,
                                          height: 60,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              color: Colors.grey.shade50,
                                              border: Border.all()),
                                          child: Center(
                                            child: DropdownButton<String>(
                                              isExpanded: true,
                                              hint: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text("Select School"),
                                              ),
                                              value: _chosenValue,
                                              icon: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Image.asset(
                                                  dropIcon,
                                                  height: 10,
                                                ),
                                              ),
                                              underline: Container(),
                                              iconSize: 24,
                                              elevation: 16,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: "Karla"),
                                              onChanged: (String newValue) {
                                                setState(() {
                                                  _chosenValue = newValue;
                                                });
                                              },
                                              items: <String>[
                                                'School 1',
                                                'School 2',
                                                'School 3',
                                                'School 4'
                                              ].map<DropdownMenuItem<String>>(
                                                  (String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Container(
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10),
                                                      child: Text(value)),
                                                );
                                              }).toList(),
                                            ),
                                          )),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 5),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, bottom: 5),
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                filled: true,
                                                fillColor: Colors.grey.shade100,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(7)),
                                                  borderSide: BorderSide(
                                                      color: Colors.white,
                                                      width: 5.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 8.0, horizontal: 16),
                                            child: Text(
                                              "@",
                                              style: TextStyle(
                                                  fontSize: ScreenConfig
                                                      .fontSizelarge,
                                                  fontFamily: "Karla"),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "PASSWORD",
                                            style: TextStyle(
                                                fontFamily: "Karla",
                                                color:
                                                    CColors.primaryButtonColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize:
                                                    ScreenConfig.fontSizeSmall),
                                          ),
                                          Spacer()
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: TextFormField(
                                          obscureText: true,
                                          obscuringCharacter: "*",
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.grey.shade100,
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(7)),
                                              borderSide: BorderSide(
                                                  color: Colors.white,
                                                  width: 5.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 10),
                                        child: Text(
                                          "Must be 8 or more than character and contain at least 1 number.",
                                          style: TextStyle(
                                              fontFamily: "Karla",
                                              color: Colors.black,
                                              fontSize:
                                                  ScreenConfig.fontSizeSmall),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "CONFIRM PASSWORD",
                                            style: TextStyle(
                                                fontFamily: "Karla",
                                                color:
                                                    CColors.primaryButtonColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize:
                                                    ScreenConfig.fontSizeSmall),
                                          ),
                                          Spacer()
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: TextFormField(
                                          obscureText: true,
                                          obscuringCharacter: "*",
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.grey.shade100,
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(7)),
                                              borderSide: BorderSide(
                                                  color: Colors.white,
                                                  width: 5.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "PARENT/GUARDIAN EMAIL",
                                            style: TextStyle(
                                                fontFamily: "Karla",
                                                color:
                                                    CColors.primaryButtonColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize:
                                                    ScreenConfig.fontSizeSmall),
                                          ),
                                          Spacer()
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.grey.shade100,
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(7)),
                                              borderSide: BorderSide(
                                                  color: Colors.white,
                                                  width: 5.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "GRADE",
                                            style: TextStyle(
                                                fontFamily: "Karla",
                                                color:
                                                    CColors.primaryButtonColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize:
                                                    ScreenConfig.fontSizeSmall),
                                          ),
                                          Spacer()
                                        ],
                                      ),
                                      Container(
                                          margin: const EdgeInsets.only(
                                              top: 10, bottom: 5),
                                          width: ScreenConfig.screenWidth,
                                          height: 60,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              color: Colors.grey.shade50,
                                              border: Border.all()),
                                          child: Center(
                                            child: DropdownButton<String>(
                                              isExpanded: true,
                                              hint: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text("Select Grade"),
                                              ),
                                              value: _chosenValue,
                                              icon: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Image.asset(
                                                  dropIcon,
                                                  height: 10,
                                                ),
                                              ),
                                              underline: Container(),
                                              iconSize: 24,
                                              elevation: 16,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: "Karla"),
                                              onChanged: (String newValue) {
                                                setState(() {
                                                  _chosenValue = newValue;
                                                });
                                              },
                                              items: <String>[
                                                'Grade 1',
                                                'Grade 2',
                                                'Grade 3',
                                                'Grade 4'
                                              ].map<DropdownMenuItem<String>>(
                                                  (String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Container(
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10),
                                                      child: Text(value)),
                                                );
                                              }).toList(),
                                            ),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            isVisible = !isVisible;
                                          });
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            color: Colors.grey.shade200,
                                            child: Visibility(
                                              visible: isVisible,
                                              child: Image.asset(checkIcon),
                                            ),
                                            height: 35,
                                            width: 35,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          "I WOULD LIKE TO SUBSCRIBE TO THE NEWSLETTER",
                                          style: TextStyle(
                                              fontFamily: "Karla",
                                              color: CColors.primaryButtonColor,
                                              fontWeight: FontWeight.w500,
                                              fontSize:
                                                  ScreenConfig.fontSizeXSmall),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      bottom: 5,
                                    ),
                                    width: ScreenConfig.screenWidth * 0.85,
                                    height: 60,
                                    child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (_) => DashBoard()),
                                              (route) => false);
                                        },
                                        child: Text("SIGN UP"),
                                        style: ElevatedButton.styleFrom(
                                            primary:
                                                CColors.primaryButtonColor)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                    child: Text(
                                      "By signing up, you are agreeing to the terms and \nconditions",
                                      style: TextStyle(
                                        fontFamily: "Karla",
                                        color: CColors.primaryButtonColor,
                                        fontSize: ScreenConfig.fontSizeSmall,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: ScreenConfig.screenHeight * 0.09, left: 30),
                          child: Row(
                            children: [
                              Text(
                                "Register",
                                style: TextStyle(
                                    fontSize: ScreenConfig.fontSize7Xlarge,
                                    color: CColors.yTeachWhite,
                                    fontFamily: "BaiJamjuree"),
                              ),
                              Spacer(),
                              Image.asset(
                                profilePhotoButtonLogo,
                                height: 120,
                              )
                            ],
                          ),
                        ),
                        alignment: Alignment.topLeft,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) => LoginPage()));
                    },
                    child: TextFormField(
                      enabled: false,
                      readOnly: true,
                      textAlign: TextAlign.center,
                      controller: siginControiller,
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
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 30),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => TermsAndConditionPage()));
                        },
                        child: Text(
                          "Terms and Conditions",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontFamily: "Karla",
                              fontSize: ScreenConfig.fontSizeSmall,
                              color: CColors.yTeachWhite),
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          print("4334343");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => PrivacyPolicy()));
                        },
                        child: Text("Privacy Policy",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontFamily: "Karla",
                                fontSize: ScreenConfig.fontSizeSmall,
                                color: CColors.yTeachWhite)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

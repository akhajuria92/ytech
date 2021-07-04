import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yteach/Utils/CColors.dart';
import 'package:yteach/Utils/ScreenConfig.dart';
import 'package:yteach/Utils/Strings.dart';
import 'package:yteach/view/ChatHomeScreen.dart';
import 'package:yteach/view/FindATutor.dart';
import 'package:yteach/view/LearningHomeScreen.dart';
import 'package:yteach/view/Profile.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = [];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    _widgetOptions = <Widget>[
      LearningHomeScreen(),
      FindATutor(),
      ChatHomeScreen(),
      Profile(),
    ];
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: CupertinoTabScaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: CColors.yTeachBlueGrey,
          tabBar: CupertinoTabBar(


            backgroundColor: CColors.yTeachBlueGrey,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  lessonOff,
                  height: 20,
                ),
                label: 'Lesson',
                activeIcon: Image.asset(
                  lesssonOn,
                  height: 20,
                ),
                backgroundColor: CColors.yTeachBlueGrey,
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  findOff,
                  height: 20,
                ),
                activeIcon: Image.asset(
                  findOn,
                  height: 20,
                ),
                label: 'Find a Tutor',
                backgroundColor: CColors.yTeachBlueGrey,
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  chatOff,
                  height: 20,
                ),
                activeIcon: Image.asset(
                  chatOn,
                  height: 20,
                ),
                label: 'Chat',
                backgroundColor: CColors.yTeachBlueGrey,
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  profileOff,
                  height: 20,
                ),
                activeIcon: Image.asset(
                  profileOn,
                  height: 20,
                ),
                label: 'profile',
                backgroundColor: CColors.yTeachBlueGrey,
              ),
            ],
          ),
          tabBuilder: (context, index) {
            if (index == 0) {
              return CupertinoTabView(
                // navigatorKey: firstTabNavKey,
                builder: (BuildContext context) => LearningHomeScreen(),
              );
            } else if (index == 1) {
              return CupertinoTabView(
                // navigatorKey: secondTabNavKey,
                builder: (BuildContext context) => FindATutor(),
              );
            } else if (index == 2) {
              return CupertinoTabView(
                // navigatorKey: secondTabNavKey,
                builder: (BuildContext context) => ChatHomeScreen(),
              );
            } else {
              return CupertinoTabView(
                // navigatorKey: thirdTabNavKey,
                builder: (BuildContext context) => Profile(),
              );
            }
          },
        ),
      ),
    );
  }
}

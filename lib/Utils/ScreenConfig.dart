import 'package:flutter/widgets.dart';

class ScreenConfig {
  static var screenHeight;
  static var screenWidth;
  static double widgetPaddingXLarge;
  static double widgetPaddingLarge;
  static double widgetPaddingMedium;
  static double widgetPaddingSmall;
  static double widgetPaddingXSmall;
  static double fontSizeXlarge;
  static double fontSizeXXlarge;
  static double fontSizeXXXlarge;
  static double fontSize4Xlarge;
  static double fontSize5Xlarge;
  static double fontSize6Xlarge;
  static double fontSize7Xlarge;
  static double fontSize8Xlarge;
  static double fontSize9Xlarge;
  static double fontSize10Xlarge;
  static double fontSize11Xlarge;
  static double fontSizelarge;
  static double fontSizeMedium;
  static double fontSizeSmall;
  static double fontSizeXSmall;

  void init(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    widgetPaddingXLarge = 50;
    widgetPaddingLarge = 25;
    widgetPaddingMedium = 10;
    widgetPaddingSmall = 5;
    widgetPaddingXSmall = 2.5;
    fontSizeXXlarge = 24.0;
    fontSizeXXXlarge = 26.0;
    fontSize4Xlarge = 28.0;
    fontSize5Xlarge = 30.0;
    fontSize6Xlarge = 32.0;
    fontSize8Xlarge = 36.0;
    fontSize7Xlarge = 34.0;
    fontSize9Xlarge = 38.0;
    fontSize10Xlarge = 40.0;
    fontSize11Xlarge = 42.0;
    fontSizeXlarge = 18.0;
    fontSizelarge = 16.0;
    fontSizeMedium = 14.0;
    fontSizeSmall = 12.0;
    fontSizeXSmall = 10.0;
  }
}

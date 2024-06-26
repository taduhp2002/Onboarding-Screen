import 'package:flutter/material.dart';


class SizeConfig{
  static MediaQueryData _mediaQueryData = 0 as MediaQueryData;
  static double screenWidth = 0;
  static double screenHeight= 0;
  static double defaultSize = 0;
  static Orientation orientation = 0 as Orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    
    orientation = _mediaQueryData.orientation;
  }
}

double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  return (inputHeight / 812.0) * screenHeight;
}

double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 375.0) * screenWidth;
}

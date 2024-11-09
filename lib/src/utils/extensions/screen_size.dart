import 'package:flutter/material.dart';

extension ScreenSize on double {
  static double screenWidth = 0;
  static double screenHeight = 0;
  double getScreenWidth({required BuildContext context}){
    screenWidth = MediaQuery.of(context).size.width;
    return screenWidth;
  }

  double getScreenHeight({required BuildContext context}){
    screenHeight = MediaQuery.of(context).size.height;
    return screenHeight;
  }

}
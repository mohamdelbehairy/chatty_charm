import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Styles {
  static TextStyle semiBold20 = TextStyle(
      fontSize: getResponsiveFontSize(20),
      color: const Color(0xff000000),
      fontWeight: FontWeight.w600,
      fontFamily: 'Rubik');

  static TextStyle regular17 = TextStyle(
      fontSize: getResponsiveFontSize(17),
      color: const Color(0xff000000),
      fontWeight: FontWeight.w400,
      fontFamily: 'Rubik');

  static TextStyle regular34 = TextStyle(
      fontSize: getResponsiveFontSize(34),
      color: const Color(0xff000000),
      fontWeight: FontWeight.w400,
      fontFamily: 'Rubik');

  static TextStyle semiBold28 = TextStyle(
      fontSize: getResponsiveFontSize(28),
      color: const Color(0xff262522),
      fontWeight: FontWeight.w600,
      fontFamily: 'Rubik');

  static TextStyle regular15 = TextStyle(
      fontSize: getResponsiveFontSize(15),
      color: const Color(0xff262522),
      fontWeight: FontWeight.w400,
      fontFamily: 'Rubik');

  static TextStyle regular20 = TextStyle(
      fontSize: getResponsiveFontSize(20),
      color: const Color(0xff403E39),
      fontWeight: FontWeight.w400,
      fontFamily: 'Rubik');

  static TextStyle medium20 = TextStyle(
      fontSize: getResponsiveFontSize(20),
      color: const Color(0xffFFFBF2),
      fontWeight: FontWeight.w500,
      fontFamily: 'Rubik');
}

double getResponsiveFontSize(double fontSize) {
  double scallFactor = getScallFacot();
  double responsiveFontSize = fontSize * scallFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScallFacot() {
  var dispatcher = PlatformDispatcher.instance;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  var width = physicalWidth / devicePixelRatio;
  return width / 550;
}

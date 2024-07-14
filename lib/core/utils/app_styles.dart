import 'package:flutter/material.dart';

abstract class AppStyles {
  static const String fontFamily = 'Roboto';
  static TextStyle regular14 = const TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
  static TextStyle regular12 = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: Colors.white);
  static TextStyle regular10 = const TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 10,
  );
  static TextStyle medium14 = const TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );
  static TextStyle medium18 = const TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );
  static TextStyle semiBold32 = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      fontSize: 32,
      color: Colors.white);
}

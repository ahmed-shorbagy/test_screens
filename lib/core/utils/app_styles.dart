import 'package:flutter/material.dart';
import 'package:test_screens/core/utils/size_config.dart';

abstract class AppStyles {
  static const String fontFamily = 'Roboto';

  static TextStyle regular14 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: getProportionateScreenWidth(14),
  );
  static TextStyle regular12 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: getProportionateScreenWidth(12),
    color: Colors.white,
  );
  static TextStyle regular10 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: getProportionateScreenWidth(10),
  );
  static TextStyle medium14 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: getProportionateScreenWidth(14),
  );
  static TextStyle medium18 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: getProportionateScreenWidth(18),
  );
  static TextStyle semiBold32 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: getProportionateScreenWidth(32),
    color: Colors.white,
  );
}

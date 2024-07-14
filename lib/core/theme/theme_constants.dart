import 'package:flutter/material.dart';

const kLightPrimaryColor = Color(0xff202A30);

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: kLightPrimaryColor,
  );
}

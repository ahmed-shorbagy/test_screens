import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_screens/core/theme/theme_constants.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: lightTheme(),
      title: "Test_Screens",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}

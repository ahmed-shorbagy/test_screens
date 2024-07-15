import 'package:flutter/material.dart';
import 'package:test_screens/core/utils/app_styles.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Profile",
        style: AppStyles.semiBold32.copyWith(color: Colors.black),
      ),
    );
  }
}

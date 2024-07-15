import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_screens/app/modules/Registration/views/widgets/login_form.dart';
import 'package:test_screens/app/routes/app_pages.dart';
import 'package:test_screens/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xff465C65),
            Color(0xff4B859F),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
            Get.offNamed(Routes.HOME);
          } else {
            autovalidateMode = AutovalidateMode.always;
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          "Sign in",
          style: AppStyles.regular14.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}

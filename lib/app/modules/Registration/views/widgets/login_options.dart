import 'package:flutter/material.dart';
import 'package:test_screens/app/modules/Registration/views/widgets/remeber_me_checkBox.dart';
import 'package:test_screens/core/utils/app_styles.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const RememberMeCheckBox(),
            Text(
              "Remember me",
              style: AppStyles.regular12,
            )
          ],
        ),
        const Spacer(),
        GestureDetector(
          child: Text(
            "Forgot Password?",
            style: AppStyles.regular12,
          ),
        )
      ],
    );
  }
}

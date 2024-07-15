import 'package:flutter/material.dart';
import 'package:test_screens/app/modules/Registration/views/widgets/custom_text_feild.dart';
import 'package:test_screens/app/modules/Registration/views/widgets/custom_button.dart';
import 'package:test_screens/core/utils/app_styles.dart';

import 'login_options.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

final GlobalKey<FormState> formKey = GlobalKey<FormState>();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
bool isobsecure = true;

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Email",
            style: AppStyles.regular12,
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomTextFeild(
            fillColor: Colors.white,
            hintText: "Enter your email",
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Password",
            style: AppStyles.regular12,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFeild(
            fillColor: Colors.white,
            hintText: "***********",
            suffixicon: IconButton(
              onPressed: () {
                setState(() {
                  isobsecure = !isobsecure;
                });
              },
              icon: isobsecure
                  ? const Icon(Icons.visibility_off)
                  : const Icon(Icons.visibility),
            ),
            isobsecure: isobsecure,
          ),
          const SizedBox(
            height: 20,
          ),
          const LoginOptions(),
          const SizedBox(
            height: 24,
          ),
          const CustomButton()
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_screens/app/modules/Registration/views/widgets/email_textFiled_with_label.dart';
import 'package:test_screens/app/modules/Registration/views/widgets/linear_gradientColor_sign_in_button.dart';
import 'package:test_screens/app/modules/Registration/views/widgets/password_text_field_with_label.dart';

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

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          EmailTextFieldWIthLabel(
            label: "Email",
            hintText: "Enter your email",
          ),
          SizedBox(
            height: 20,
          ),
          PasswordTextFieldWIthLabel(
              label: "Password", hintText: "***********"),
          SizedBox(
            height: 20,
          ),
          LoginOptions(),
          SizedBox(
            height: 24,
          ),
          LinearGradientColorSignInButton()
        ],
      ),
    );
  }
}

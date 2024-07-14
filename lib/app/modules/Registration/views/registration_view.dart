import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_screens/app/modules/Registration/views/widgets/email_textFiled_with_label.dart';
import 'package:test_screens/app/modules/Registration/views/widgets/linear_gradientColor_sign_in_button.dart';
import 'package:test_screens/app/modules/Registration/views/widgets/login_form.dart';
import 'package:test_screens/app/modules/Registration/views/widgets/login_options.dart';
import 'package:test_screens/app/modules/Registration/views/widgets/password_text_field_with_label.dart';
import 'package:test_screens/core/theme/theme_constants.dart';
import 'package:test_screens/core/utils/app_styles.dart';
import 'package:test_screens/core/utils/assets.dart';
import 'package:test_screens/core/utils/size_config.dart';

import '../controllers/registration_controller.dart';

class RegistrationView extends GetView<RegistrationController> {
  const RegistrationView({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: kLightPrimaryColor,
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          alignment: Alignment.topCenter,
          image: AssetImage(
            Assets.imagesBg,
          ),
        )),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Login',
                style: AppStyles.semiBold32,
              ),
              Text(
                'to your account',
                style: AppStyles.semiBold32,
              ),
              const SizedBox(
                height: 45,
              ),
              const LoginForm()
            ],
          ),
        ),
      ),
    );
  }
}

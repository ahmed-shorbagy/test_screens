import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/assets.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(Assets.imagesAppBarBackGround), fit: BoxFit.fill),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Padding(
          padding: const EdgeInsets.only(top: 42),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    Assets.imagesProfileAvatarpng,
                    fit: BoxFit.cover,
                    scale: 0.9,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome",
                        style: AppStyles.regular12,
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "Ahmed Hany",
                        textAlign: TextAlign.start,
                        style: AppStyles.medium18.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
              CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.12),
                  child: SvgPicture.asset(Assets.imagesNotifications)),
            ],
          ),
        ),
      ),
    );
  }
}

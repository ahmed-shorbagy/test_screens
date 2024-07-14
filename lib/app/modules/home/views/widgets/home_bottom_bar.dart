import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/assets.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 70,
      shape: const CircularNotchedRectangle(),
      elevation: 0,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {},
            child: Column(
              children: [
                Image.asset(Assets.imagesHome),
                const SizedBox(height: 4),
                Text("Home",
                    style: AppStyles.regular12
                        .copyWith(color: const Color(0xff476572))),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Column(
              children: [
                Image.asset(Assets.imagesProfile),
                const SizedBox(height: 4),
                Text("Profile",
                    style: AppStyles.regular12
                        .copyWith(color: const Color(0xff5C5C5C))),
              ],
            ),
          )
        ],
      ),
    );
  }
}

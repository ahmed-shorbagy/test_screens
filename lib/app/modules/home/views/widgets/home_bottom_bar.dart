import 'package:flutter/material.dart';
import 'package:test_screens/app/modules/home/views/widgets/bottom_bar_item.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/assets.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      height: 70,
      shape: CircularNotchedRectangle(),
      elevation: 0,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomBarItem(
            image: Assets.imagesHome,
            title: "Home",
          ),
          SizedBox(
            width: 10,
          ),
          BottomBarItem(
            image: Assets.imagesProfile,
            title: "Profile",
          ),
        ],
      ),
    );
  }
}

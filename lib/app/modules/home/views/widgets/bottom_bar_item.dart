import 'package:flutter/material.dart';
import 'package:test_screens/core/utils/app_styles.dart';

class BottomBarItem extends StatelessWidget {
  const BottomBarItem({
    super.key,
    required this.image,
    required this.title,
  });
  final String image, title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Image.asset(image),
          const SizedBox(height: 4),
          Text(title,
              style:
                  AppStyles.regular12.copyWith(color: const Color(0xff476572))),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_screens/core/utils/app_styles.dart';

class CommentsSectionHeader extends StatelessWidget {
  const CommentsSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Friday 10 Nov ",
          style: AppStyles.regular14.copyWith(
            color: const Color(0xff333333),
          ),
        ),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 4,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: const Color(0xffB7B7B7))),
            child: Text(
              "View",
              style:
                  AppStyles.regular12.copyWith(color: const Color(0xff757575)),
            ),
          ),
        )
      ],
    );
  }
}

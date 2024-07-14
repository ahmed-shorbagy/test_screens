import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_screens/core/utils/app_styles.dart';

class CurrentProjectsListTitle extends StatelessWidget {
  const CurrentProjectsListTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Current projects",
          style: AppStyles.regular14,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text(
            "View all",
            style: AppStyles.regular14.copyWith(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}

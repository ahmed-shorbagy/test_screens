import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:test_screens/app/routes/app_pages.dart';
import 'package:test_screens/core/utils/app_styles.dart';

import 'current_project_list.dart';

class CurrentProjectsSection extends StatelessWidget {
  const CurrentProjectsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.zero,
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: const Padding(
          padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
          child: Column(
            children: [
              CurrentProjectsListTitle(),
              SizedBox(
                height: 16,
              ),
              IntrinsicHeight(
                child: CurrentProjectsList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
          child: GestureDetector(
            onTap: () {
              Get.toNamed(Routes.AllProjects);
            },
            child: Text(
              "View all",
              style: AppStyles.regular14.copyWith(color: Colors.blue),
            ),
          ),
        ),
      ],
    );
  }
}

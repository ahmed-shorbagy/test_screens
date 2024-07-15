import 'package:flutter/material.dart';
import 'package:test_screens/app/data/models/current_projects_listItem_model.dart';
import 'package:test_screens/core/utils/app_styles.dart';

class CurrentProjectsListItem extends StatelessWidget {
  const CurrentProjectsListItem({
    super.key,
    required this.currentProjectsListITemMOdel,
  });
  final CurrentProjectsListITemMOdel currentProjectsListITemMOdel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              currentProjectsListITemMOdel.image,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currentProjectsListITemMOdel.title,
                    style: AppStyles.medium14
                        .copyWith(color: const Color(0xff5E5E5E)),
                  ),
                  Text(
                    currentProjectsListITemMOdel.subtitle,
                    style: AppStyles.regular10
                        .copyWith(color: const Color(0xff757575)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

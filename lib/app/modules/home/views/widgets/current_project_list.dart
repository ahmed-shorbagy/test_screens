import 'package:flutter/material.dart';
import 'package:test_screens/app/data/models/current_projects_listItem_model.dart';
import 'package:test_screens/app/modules/home/views/widgets/current_projects_lisItem.dart';

import '../../../../../core/utils/assets.dart';

class CurrentProjectsList extends StatelessWidget {
  const CurrentProjectsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<CurrentProjectsListITemMOdel> currentProjectsListITemMOdel = [
      CurrentProjectsListITemMOdel(
          title: "Project 1",
          image: Assets.imagesProject1,
          subtitle: "last edit: 22 Nov, 10:23 PM"),
      CurrentProjectsListITemMOdel(
          title: "Project 2",
          image: Assets.imagesProject1,
          subtitle: "last edit: 22 Nov, 10:23 PM"),
      CurrentProjectsListITemMOdel(
          title: "Project 3",
          image: Assets.imagesProject1,
          subtitle: "last edit: 22 Nov, 10:23 PM"),
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...currentProjectsListITemMOdel.map((e) => CurrentProjectsListItem(
                currentProjectsListITemMOdel: e,
              ))
        ],
      ),
    );
  }
}

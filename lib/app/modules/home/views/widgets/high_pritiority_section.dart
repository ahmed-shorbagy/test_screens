import 'package:flutter/material.dart';
import 'package:test_screens/app/data/models/todo_projects_item_model.dart';
import 'package:test_screens/app/modules/home/views/widgets/todo_projects_item.dart';
import 'package:test_screens/core/utils/app_styles.dart';
import 'package:test_screens/core/utils/assets.dart';

class HighPirioritySection extends StatelessWidget {
  const HighPirioritySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<ToDoProjectsItemModel> toDoProjectsItemModelList = [
      ToDoProjectsItemModel(
          title: "Friday 10 Nov",
          image: Assets.imagesProject1,
          subtitle: "project Name - Reports",
          status: ToDoStatus.NotComplated),
      ToDoProjectsItemModel(
          title: "Friday 10 Nov",
          image: Assets.imagesProject1,
          subtitle: "project Name - Reports",
          status: ToDoStatus.NeedToRieview),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "High Priority",
          style: AppStyles.regular14.copyWith(color: const Color(0xff757575)),
        ),
        ...toDoProjectsItemModelList.map((e) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 1),
              child: ToDoProjectsItem(toDoProjectsItemModel: e),
            )),
      ],
    );
  }
}

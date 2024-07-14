import 'package:flutter/widgets.dart';
import 'package:test_screens/app/modules/home/views/widgets/todo_projects_item.dart';
import 'package:test_screens/core/utils/app_styles.dart';
import 'package:test_screens/core/utils/assets.dart';

import '../../../../data/models/todo_projects_item_model.dart';

class ToDayReportsSection extends StatelessWidget {
  const ToDayReportsSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<ToDoProjectsItemModel> toDoProjectsItemModelList = [
      ToDoProjectsItemModel(
          title: "Friday 10 Nov",
          image: Assets.imagesProject1,
          subtitle: "project Name - Reports",
          status: ToDoStatus.approved),
      ToDoProjectsItemModel(
          title: "Friday 10 Nov",
          image: Assets.imagesProject1,
          subtitle: "project Name - Reports",
          status: ToDoStatus.approved),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Today Reports",
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

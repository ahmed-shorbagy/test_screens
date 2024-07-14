import 'package:flutter/material.dart';
import 'package:test_screens/app/modules/home/views/widgets/to_do_options_section.dart';
import 'package:test_screens/app/modules/home/views/widgets/todo_projects_item.dart';
import 'package:test_screens/core/utils/app_styles.dart';

class ToDoSection extends StatelessWidget {
  const ToDoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(22),
            child: ToDoSectionOptions(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "High Priority",
                  style: AppStyles.regular14
                      .copyWith(color: const Color(0xff757575)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ToDoProjectsItem()
              ],
            ),
          )
        ],
      ),
    );
  }
}

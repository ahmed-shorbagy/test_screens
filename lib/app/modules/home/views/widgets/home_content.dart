import 'package:flutter/material.dart';
import 'package:test_screens/app/modules/home/views/widgets/current_projects_section.dart';
import 'package:test_screens/app/modules/home/views/widgets/todo_and_comments_pageView_section.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CurrentProjectsSection(),
        SizedBox(height: 12),
        Expanded(
          child: ToDoAndCommentsPageViewSection(),
        ),
      ],
    );
  }
}

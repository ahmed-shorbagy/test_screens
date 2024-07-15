import 'package:flutter/material.dart';
import 'package:test_screens/app/modules/home/views/widgets/current_projects_section.dart';
import 'package:test_screens/app/modules/home/views/widgets/pageView_OptionsButtons.dart';
import 'package:test_screens/app/modules/home/views/widgets/todo_section.dart';

import 'comments_section.dart';

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

class ToDoAndCommentsPageViewSection extends StatefulWidget {
  const ToDoAndCommentsPageViewSection({
    super.key,
  });

  @override
  State<ToDoAndCommentsPageViewSection> createState() =>
      _ToDoAndCommentsPageViewSectionState();
}

final PageController pageController = PageController();

class _ToDoAndCommentsPageViewSectionState
    extends State<ToDoAndCommentsPageViewSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          const PageViewOptionButtons(),
          Expanded(
            child: PageView(
              controller: pageController,
              children: const [ToDoSection(), CeommentsSection()],
            ),
          )
        ],
      ),
    );
  }
}

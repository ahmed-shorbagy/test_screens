import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_screens/app/modules/home/views/widgets/comments_section.dart';
import 'package:test_screens/app/modules/home/views/widgets/pageView_OptionsButtons.dart';
import 'package:test_screens/app/modules/home/views/widgets/todo_section.dart';

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

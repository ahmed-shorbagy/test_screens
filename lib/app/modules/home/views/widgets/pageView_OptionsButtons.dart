import 'package:flutter/material.dart';
import 'package:test_screens/app/modules/home/views/widgets/search_options.dart';

class PageViewOptionButtons extends StatefulWidget {
  const PageViewOptionButtons({super.key});

  @override
  State<PageViewOptionButtons> createState() => _PageViewOptionButtonsState();
}

class _PageViewOptionButtonsState extends State<PageViewOptionButtons> {
  bool isToDoSelected = true;
  final PageController pageController =
      PageController(); // Ensure you have this

  void _onButtonPressed(bool toDoSelected, int pageIndex) {
    setState(() {
      isToDoSelected = toDoSelected;
    });
    pageController.animateToPage(
      pageIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 3,
      color: Colors.grey.shade200,
      child: Row(
        children: [
          Expanded(
            child: CustomHomeButton(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
              text: 'To Do (12)',
              isSelected: isToDoSelected,
              onPressed: () => _onButtonPressed(true, 0),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4),
                bottomLeft: Radius.circular(4),
              ),
            ),
          ),
          Expanded(
            child: CustomHomeButton(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
              text: 'Comments (11)',
              isSelected: !isToDoSelected,
              onPressed: () => _onButtonPressed(false, 2),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

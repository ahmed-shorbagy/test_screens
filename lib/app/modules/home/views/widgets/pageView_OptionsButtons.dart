import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import 'todo_and_comments_pageView_section.dart';

class PageViewOptionButtons extends StatefulWidget {
  const PageViewOptionButtons({
    super.key,
  });

  @override
  State<PageViewOptionButtons> createState() => _PageViewOptionButtonsState();
}

bool isToDoSelected = true;

class _PageViewOptionButtonsState extends State<PageViewOptionButtons> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 3,
      color: Colors.grey.shade200,
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isToDoSelected = true;
                });
                pageController.animateToPage(
                  0,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                      isToDoSelected ? const Color(0xff476572) : Colors.white),
                  padding: const WidgetStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 18)),
                  shape:
                      const WidgetStatePropertyAll(RoundedRectangleBorder())),
              child: Text(
                "To Do (12)",
                style: AppStyles.regular14.copyWith(
                    color: isToDoSelected
                        ? Colors.white
                        : const Color(0xff5E5E5E)),
              ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                      !isToDoSelected ? const Color(0xff476572) : Colors.white),
                  padding: const WidgetStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 18)),
                  shape:
                      const WidgetStatePropertyAll(RoundedRectangleBorder())),
              onPressed: () {
                setState(() {
                  isToDoSelected = false;
                });
                pageController.animateToPage(
                  2,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              child: Text(
                "Comments (11)",
                style: AppStyles.regular14.copyWith(
                    color: !isToDoSelected
                        ? Colors.white
                        : const Color(0xff5E5E5E)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

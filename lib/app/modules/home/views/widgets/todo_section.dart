import 'package:flutter/material.dart';
import 'package:test_screens/app/modules/home/views/widgets/high_pritiority_section.dart';
import 'package:test_screens/app/modules/home/views/widgets/to_do_options_section.dart';
import 'package:test_screens/app/modules/home/views/widgets/today_reports_section.dart';

class ToDoSection extends StatelessWidget {
  const ToDoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
              child: ToDoSectionOptions(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: HighPirioritySection(),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ToDayReportsSection(),
            ),
          ],
        ),
      ),
    );
  }
}

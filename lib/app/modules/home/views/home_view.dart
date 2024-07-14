import 'package:flutter/material.dart';
import 'package:test_screens/app/modules/home/views/widgets/current_projects_section.dart';
import 'package:test_screens/app/modules/home/views/widgets/home_bottom_bar.dart';
import 'package:test_screens/app/modules/home/views/widgets/home_floating_button.dart';
import 'package:test_screens/app/modules/home/views/widgets/todo_and_comments_pageView_section.dart';

import 'widgets/home_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: HomeFloatinButton(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: HomeAppBar(),
      ),
      body: Expanded(
        child: Column(
          children: [
            CurrentProjectsSection(),
            SizedBox(height: 12),
            Expanded(
              child: ToDoAndCommentsPageViewSection(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}

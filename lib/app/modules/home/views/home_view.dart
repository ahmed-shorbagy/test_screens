import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:test_screens/app/modules/home/views/widgets/current_project_list.dart';
import 'package:test_screens/app/modules/home/views/widgets/home_app_bar.dart';
import 'package:test_screens/app/modules/home/views/widgets/todo_and_comments_pageView_section.dart';

import '../controllers/home_controller.dart';
import 'widgets/current_projects_list_title.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: HomeAppBar(),
      ),
      body: Column(
        children: [
          Card(
            elevation: 3,
            margin: EdgeInsets.zero,
            child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: const Padding(
                padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
                child: Column(
                  children: [
                    CurrentProjectsListTitle(),
                    SizedBox(
                      height: 16,
                    ),
                    IntrinsicHeight(
                      child: CurrentProjectsList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const ToDoAndCommentsPageViewSection()
        ],
      ),
    );
  }
}

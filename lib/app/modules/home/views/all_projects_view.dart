import 'package:flutter/material.dart';
import 'package:test_screens/app/modules/home/views/widgets/all_projects_app_bar.dart';

class AllProjectsView extends StatelessWidget {
  const AllProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AllProjectsAppBar(),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}

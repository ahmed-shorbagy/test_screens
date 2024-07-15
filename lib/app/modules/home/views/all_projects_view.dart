import 'package:flutter/material.dart';
import 'package:test_screens/app/modules/home/views/widgets/all_projects_app_bar.dart';
import 'package:test_screens/app/modules/home/views/widgets/all_projects_search_field.dart';
import 'package:test_screens/app/modules/home/views/widgets/search_options.dart';

class AllProjectsView extends StatelessWidget {
  const AllProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AllProjectsAppBar(),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            AllProjectsSearchField(),
            SizedBox(
              height: 16,
            ),
            SearchOptions()
          ],
        ),
      ),
    );
  }
}

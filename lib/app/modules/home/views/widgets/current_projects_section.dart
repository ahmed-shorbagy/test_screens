import 'package:flutter/material.dart';

import 'current_project_list.dart';
import 'current_projects_list_title.dart';

class CurrentProjectsSection extends StatelessWidget {
  const CurrentProjectsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}

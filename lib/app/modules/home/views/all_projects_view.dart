import 'package:flutter/material.dart';
import 'package:test_screens/app/modules/home/views/widgets/all_projects_app_bar.dart';
import 'package:test_screens/app/modules/home/views/widgets/all_projects_search_field.dart';
import 'package:test_screens/app/modules/home/views/widgets/search_options.dart';
import 'package:test_screens/app/modules/home/views/widgets/search_result_list.dart';
import 'package:test_screens/core/utils/app_styles.dart';

class AllProjectsView extends StatelessWidget {
  const AllProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AllProjectsAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const AllProjectsSearchField(),
              const SizedBox(
                height: 16,
              ),
              const SearchOptions(),
              const SizedBox(
                height: 33,
              ),
              Text(
                "This Week",
                style: AppStyles.regular14
                    .copyWith(color: const Color(0xff757575)),
              ),
              const SearchReultList()
            ],
          ),
        ),
      ),
    );
  }
}

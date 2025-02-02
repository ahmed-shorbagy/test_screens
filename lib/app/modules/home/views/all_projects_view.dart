import 'package:flutter/material.dart';
import 'package:test_screens/app/modules/Registration/views/widgets/custom_text_feild.dart';
import 'package:test_screens/app/modules/home/views/widgets/all_projects_view_widgets.dart';
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
              const CustomTextFeild(
                hintText: "Search",
                fillColor: Color(0xffEAEAEA),
                prefixicon: Icon(Icons.search),
              ),
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

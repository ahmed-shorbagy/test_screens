import 'package:flutter/material.dart';
import 'package:test_screens/app/modules/home/views/widgets/high_pritiority_section.dart';
import 'package:test_screens/app/modules/home/views/widgets/today_reports_section.dart';
import 'package:test_screens/core/utils/app_styles.dart';
import 'package:test_screens/core/utils/assets.dart';

class ToDoSection extends StatelessWidget {
  const ToDoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
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
    );
  }
}

class ToDoSectionOptions extends StatelessWidget {
  const ToDoSectionOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              padding: const WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 10, vertical: 2)),
              backgroundColor: const WidgetStatePropertyAll(Color(0xffF4F4F4)),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ))),
          child: Row(
            children: [
              Text(
                "All Projects",
                style: AppStyles.regular14
                    .copyWith(color: const Color(0xff445860)),
              ),
              const SizedBox(
                width: 8,
              ),
              Image.asset(Assets.imagesArrowDown)
            ],
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.filter_list))
      ],
    );
  }
}

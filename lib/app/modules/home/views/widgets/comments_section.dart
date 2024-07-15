import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_screens/app/modules/home/views/widgets/comments_section_body.dart';
import 'package:test_screens/app/modules/home/views/widgets/todo_section.dart';
import 'package:test_screens/core/utils/app_styles.dart';

class CeommentsSection extends StatelessWidget {
  const CeommentsSection({super.key});

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
          CommentsSectionCard()
        ],
      ),
    );
  }
}

class CommentsSectionCard extends StatelessWidget {
  const CommentsSectionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 3,
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: Color(0xffB7B7B7), width: 1),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [CommentsSectionHeader(), CommentsSectionBody()],
        ),
      ),
    );
  }
}

class CommentsSectionHeader extends StatelessWidget {
  const CommentsSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Friday 10 Nov ",
          style: AppStyles.regular14.copyWith(
            color: const Color(0xff333333),
          ),
        ),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 4,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: const Color(0xffB7B7B7))),
            child: Text(
              "View",
              style:
                  AppStyles.regular12.copyWith(color: const Color(0xff757575)),
            ),
          ),
        )
      ],
    );
  }
}

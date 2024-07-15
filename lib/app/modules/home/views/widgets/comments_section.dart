import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_screens/app/modules/home/views/widgets/comments_section_card.dart';
import 'package:test_screens/app/modules/home/views/widgets/to_do_options_section.dart';

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

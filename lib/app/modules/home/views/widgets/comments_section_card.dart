import 'package:flutter/material.dart';
import 'package:test_screens/app/modules/home/views/widgets/comments_section_body.dart';
import 'package:test_screens/app/modules/home/views/widgets/comments_section_header.dart';

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

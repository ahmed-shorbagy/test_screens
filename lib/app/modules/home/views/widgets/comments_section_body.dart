import 'package:flutter/material.dart';
import 'package:test_screens/core/utils/app_styles.dart';

class CommentsSectionBody extends StatelessWidget {
  const CommentsSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "project Name - Construction Equipment",
          style: AppStyles.regular12.copyWith(color: const Color(0xff9C9C9C)),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Construction Equipment",
          style: AppStyles.regular14.copyWith(color: const Color(0xff5E5E5E)),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 14),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: const Color(0xffEDEDED)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Contractor's response",
                style:
                    AppStyles.medium14.copyWith(color: const Color(0xff748489)),
              ),
              const SizedBox(
                height: 9,
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                style: AppStyles.regular14
                    .copyWith(color: const Color(0xff5E5E5E)),
              ),
              const SizedBox(
                height: 9,
              ),
              Text(
                "11Nov 11:55 AM",
                style: AppStyles.regular12
                    .copyWith(color: const Color(0xff757575)),
              ),
            ],
          ),
        )
      ],
    );
  }
}

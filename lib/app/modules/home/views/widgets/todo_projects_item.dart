import 'package:flutter/material.dart';
import 'package:test_screens/core/utils/app_styles.dart';

import '../../../../../core/utils/assets.dart';

class ToDoProjectsItem extends StatelessWidget {
  const ToDoProjectsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: const Color(0xffFC9700).withOpacity(0.03),
          border: Border.all(
            color: const Color(0xffFC9700),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    Assets.imagesProject1,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 13,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Friday 10 Nov",
                  style: AppStyles.regular14,
                ),
                Text(
                  "project Name - Reports",
                  style: AppStyles.regular12
                      .copyWith(color: const Color(0xff9C9C9C)),
                )
              ],
            ),
            const Spacer(),
            Text("Not complated",
                style: AppStyles.regular12
                    .copyWith(color: const Color(0xffFC9700))),
          ],
        ),
      ),
    );
  }
}

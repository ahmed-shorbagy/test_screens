import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/assets.dart';

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

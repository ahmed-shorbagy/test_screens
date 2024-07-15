import 'package:flutter/material.dart';
import 'package:test_screens/core/utils/app_styles.dart';

class AllProjectsSearchField extends StatelessWidget {
  const AllProjectsSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        hintStyle: AppStyles.regular14.copyWith(color: const Color(0xff757575)),
        prefixIcon: const Icon(
          Icons.search,
          size: 32,
        ),
        filled: true,
        fillColor: const Color(0xffEAEAEA),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
      ),
    );
  }
}

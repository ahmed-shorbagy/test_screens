import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class EmailTextFieldWIthLabel extends StatelessWidget {
  const EmailTextFieldWIthLabel({
    super.key,
    required this.label,
    required this.hintText,
  });
  final String label, hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          label,
          style: AppStyles.regular12,
        ),
        const SizedBox(
          height: 16,
        ),
        TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required';
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: AppStyles.regular14,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ))
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class PasswordTextFieldWIthLabel extends StatefulWidget {
  const PasswordTextFieldWIthLabel({
    super.key,
    required this.label,
    required this.hintText,
  });
  final String label, hintText;

  @override
  State<PasswordTextFieldWIthLabel> createState() =>
      _PasswordTextFieldWIthLabelState();
}

class _PasswordTextFieldWIthLabelState
    extends State<PasswordTextFieldWIthLabel> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          widget.label,
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
            obscureText: obscureText,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                icon: Icon(
                  obscureText ? Icons.visibility : Icons.visibility_off,
                  color: const Color(0xff9C9C9C),
                ),
              ),
              hintText: widget.hintText,
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

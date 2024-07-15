import 'package:flutter/material.dart';
import 'package:test_screens/core/utils/app_styles.dart';

class CustomHomeButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry? padding;

  const CustomHomeButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onPressed,
    required this.borderRadius,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: WidgetStatePropertyAll(padding ?? EdgeInsets.zero),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xffDADADA)),
            borderRadius: borderRadius,
          ),
        ),
        backgroundColor: WidgetStateProperty.all(
          isSelected ? const Color(0xff476572) : Colors.white,
        ),
      ),
      child: Text(
        text,
        style: AppStyles.regular14.copyWith(
          color: isSelected ? Colors.white : const Color(0xff757575),
        ),
      ),
    );
  }
}

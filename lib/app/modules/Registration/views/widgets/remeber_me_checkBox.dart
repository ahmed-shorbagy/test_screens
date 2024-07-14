import 'package:flutter/material.dart';

class RememberMeCheckBox extends StatelessWidget {
  const RememberMeCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.5, // Adjust this value to achieve the desired size
      child: Checkbox(
        value: false,
        onChanged: (value) {},
        fillColor: const WidgetStatePropertyAll(Colors.white),
        checkColor: Colors.black,
        side: const BorderSide(
          color: Colors.transparent,
        ),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}

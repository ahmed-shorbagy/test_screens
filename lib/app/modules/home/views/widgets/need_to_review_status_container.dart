import 'package:flutter/material.dart';

class NeedReviewStatusContainer extends StatelessWidget {
  const NeedReviewStatusContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
      ),
      child: const Icon(
        Icons.close,
        size: 18,
        color: Colors.white,
      ),
    );
  }
}

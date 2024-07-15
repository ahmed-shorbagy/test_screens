import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_screens/core/utils/app_styles.dart';

class DateContainer extends StatelessWidget {
  const DateContainer({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    // Get the current date
    DateTime now = DateTime.now();
    // Format the date to "11 Nov"
    String formattedDate = DateFormat('d MMM').format(now);

    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.zero,
      height: 42,
      width: 42,
      padding: const EdgeInsets.only(top: 2, left: 4, right: 4, bottom: 2),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(formattedDate.split(' ')[0], // Display the day
              style: AppStyles.medium14.copyWith(color: Colors.white)),
          Text(formattedDate.split(' ')[1], // Display the month
              style: AppStyles.regular10.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}

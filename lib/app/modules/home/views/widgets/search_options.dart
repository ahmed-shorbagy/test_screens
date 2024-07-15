import 'package:flutter/material.dart';
import 'package:test_screens/core/utils/app_styles.dart';

class SearchOptions extends StatefulWidget {
  const SearchOptions({
    super.key,
  });

  @override
  State<SearchOptions> createState() => _SearchOptionsState();
}

int selectedIndex = 0;

class _SearchOptionsState extends State<SearchOptions> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            style: ButtonStyle(
                shape: const WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xffDADADA)),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        bottomLeft: Radius.circular(4)),
                  ),
                ),
                backgroundColor: WidgetStatePropertyAll(selectedIndex == 0
                    ? const Color(0xff476572)
                    : Colors.white)),
            child: Text(
              "Daily",
              style: AppStyles.regular14.copyWith(
                  color: selectedIndex == 0
                      ? Colors.white
                      : const Color(0xff757575)),
            ),
          ),
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            style: ButtonStyle(
                shape: const WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xffDADADA)),
                      borderRadius: BorderRadius.all(Radius.zero)),
                ),
                backgroundColor: WidgetStatePropertyAll(selectedIndex == 1
                    ? const Color(0xff476572)
                    : Colors.white)),
            child: Text(
              "Daily",
              style: AppStyles.regular14.copyWith(
                  color: selectedIndex == 1
                      ? Colors.white
                      : const Color(0xff757575)),
            ),
          ),
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                selectedIndex = 2;
              });
            },
            style: ButtonStyle(
                shape: const WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xffDADADA)),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4),
                        bottomRight: Radius.circular(4)),
                  ),
                ),
                backgroundColor: WidgetStatePropertyAll(selectedIndex == 2
                    ? const Color(0xff476572)
                    : Colors.white)),
            child: Text(
              "Daily",
              style: AppStyles.regular14.copyWith(
                  color: selectedIndex == 2
                      ? Colors.white
                      : const Color(0xff757575)),
            ),
          ),
        ),
      ],
    );
  }
}

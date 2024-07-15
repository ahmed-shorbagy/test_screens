import 'package:flutter/material.dart';
import 'package:test_screens/app/modules/home/views/widgets/custome_home_button.dart';

class SearchOptions extends StatefulWidget {
  const SearchOptions({super.key});

  @override
  State<SearchOptions> createState() => _SearchOptionsState();
}

class _SearchOptionsState extends State<SearchOptions> {
  int selectedIndex = 0;

  void _onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomHomeButton(
            text: 'Daily',
            isSelected: selectedIndex == 0,
            onPressed: () => _onButtonPressed(0),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(4),
              bottomLeft: Radius.circular(4),
            ),
          ),
        ),
        Expanded(
          child: CustomHomeButton(
            text: 'Weekly',
            isSelected: selectedIndex == 1,
            onPressed: () => _onButtonPressed(1),
            borderRadius: BorderRadius.zero,
          ),
        ),
        Expanded(
          child: CustomHomeButton(
            text: 'Monthly',
            isSelected: selectedIndex == 2,
            onPressed: () => _onButtonPressed(2),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(4),
              bottomRight: Radius.circular(4),
            ),
          ),
        ),
      ],
    );
  }
}

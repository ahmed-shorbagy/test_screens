import 'package:flutter/material.dart';
import 'package:test_screens/core/theme/theme_constants.dart';
import 'package:test_screens/core/utils/assets.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: EdgeInsetsDirectional.zero,
      height: 60,
      color: Colors.white,
      shape: const CircularNotchedRectangle(),
      notchMargin: 0.01,
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        height: kBottomNavigationBarHeight * 0.98,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(
                color: Colors.grey,
                width: 0.5,
              ),
            ),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            iconSize: 24,
            elevation: 0,
            onTap: onItemSelected,
            backgroundColor: Colors.white,
            unselectedItemColor:
                Theme.of(context).textSelectionTheme.selectionColor,
            currentIndex: selectedIndex,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(Assets.imagesHome),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(Assets.imagesProfile),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

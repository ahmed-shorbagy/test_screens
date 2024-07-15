import 'package:flutter/material.dart';
import 'package:test_screens/app/modules/home/views/profile_view.dart';
import 'package:test_screens/app/modules/home/views/widgets/home_content.dart';
import 'package:test_screens/app/modules/home/views/widgets/home_floating_button.dart';
import 'package:test_screens/app/modules/home/views/widgets/home_bottom_bar.dart';

import 'widgets/home_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedPageIndex = 0;
  final PageController pageController = PageController();

  void selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const HomeFloatinButton(),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: HomeAppBar(),
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            selectedPageIndex = index;
          });
        },
        children: const [
          HomeContent(),
          ProfileView(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: selectedPageIndex,
        onItemSelected: selectPage,
      ),
    );
  }
}

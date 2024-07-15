import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_screens/core/utils/app_styles.dart';
import 'package:test_screens/core/utils/assets.dart';

class AllProjectsAppBar extends StatelessWidget {
  const AllProjectsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(Assets.imagesAppBarBackGround), fit: BoxFit.fill),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Padding(
          padding: const EdgeInsets.only(top: 42),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Reports",
                    textAlign: TextAlign.start,
                    style: AppStyles.medium18.copyWith(color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(Assets.imagesMenuBack)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

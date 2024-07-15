import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeFloatinButton extends StatelessWidget {
  const HomeFloatinButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.white,
        shape: const CircleBorder(),
        onPressed: () {},
        child: Container(
          height: 60,
          width: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Color(0xff465C65),
                Color(0xff4B859F),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

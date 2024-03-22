import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainDesktopWidget extends StatelessWidget {
  const MainDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Hi, Valmir Jollxhiu\nA Flutter Developer ',
                  style: TextStyle(
                    fontSize: 30,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.whitePrimary,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 270,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Email me!',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/images/flutter2.png',
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}

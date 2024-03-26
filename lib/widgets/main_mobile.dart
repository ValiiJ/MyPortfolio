import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainMobileWidget extends StatelessWidget {
  const MainMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 560),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/flutter2.png',
            width: screenWidth / 1.2,
          ),

          const Text(
            'Hi, I\'m Valmir Jollxhiu\nA Flutter Developer ',
            style: TextStyle(
              fontSize: 24,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColors.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 15,
          ),

          //btn
          SizedBox(
            width: 250,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Email me!',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

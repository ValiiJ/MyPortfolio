import 'package:flutter/material.dart';

import 'package:splash_screen_view/SplashScreenView.dart';

import 'home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: SplashScreenView(
        navigateRoute: const SecondScreen(),
        duration: 3000,
        imageSize: 130,
        imageSrc:
            "assets/images/welcome_logo.jpeg", // Rruge e sakte e fajllit të logot
        backgroundColor: Colors.white,
        // Modify the onFinish callback if needed
        // onFinish: () {
        //   print("SplashScreen finished");
        // },
        text: "Welcome to My Portfolio",
        textType: TextType.NormalText,
        textStyle: const TextStyle(
          fontSize: 24.0,
          color: Color.fromARGB(255, 19, 156, 23),
        ),
      ),
    );
  }
}

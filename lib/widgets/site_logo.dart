import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});

  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        'Valmir',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          decoration: TextDecoration.underline,
          color: CustomColors.yellowSecondary,
        ),
      ),
    );
  }
}

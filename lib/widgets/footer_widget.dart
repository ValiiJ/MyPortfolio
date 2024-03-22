import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/constants/colors.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: const Text(
        'Valmir Jollxhiu',
        style: TextStyle(
          color: CustomColors.whiteSecondary,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skill_items.dart';

class SkillsDesktopWidget extends StatelessWidget {
  const SkillsDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Platforms
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450),
          child: Wrap(
            spacing: 2,
            runSpacing: 5,
            children: [
              for (int i = 0; i < platformItems.length; i++)
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: CustomColors.bgLight2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    leading: Image.asset(
                      platformItems[i]['img'],
                      width: 32,
                    ),
                    title: Text(
                      platformItems[i]['title'],
                    ),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(
          width: 50,
        ),

        //skills
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 400,
            ),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                for (int i = 0; i < skillItems.length; i++)
                  Chip(
                    backgroundColor: CustomColors.bgLight2,
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 16),
                    label: Text(
                      skillItems[i]['title'],
                    ),
                    avatar: Image.asset(
                      skillItems[i]['img'],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

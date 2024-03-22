import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skill_items.dart';

class SkillsMobileWidget extends StatelessWidget {
  const SkillsMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 500),
      child: Column(
        children: [
          for (int i = 0; i < platformItems.length; i++)
            //platforms
            Container(
              padding: const EdgeInsetsDirectional.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              margin: const EdgeInsets.only(bottom: 5),
              width: double.infinity,
              decoration: BoxDecoration(
                color: CustomColors.bgLight2,
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListTile(
                leading: Image.asset(
                  platformItems[i]['img'],
                  width: 26,
                ),
                title: Text(
                  platformItems[i]['title'],
                ),
              ),
            ),
          const SizedBox(
            height: 50,
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < skillItems.length; i++)
                Chip(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  backgroundColor: CustomColors.bgLight2,
                  label: Text(
                    skillItems[i]['title'],
                  ),
                  avatar: Image.asset(
                    skillItems[i]['img'],
                  ),
                ),
            ],
          ),
          //skills
        ],
      ),
    );
  }
}

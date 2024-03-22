import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/utils/projects_utils.dart';

//fix later
// import 'dart:js' as js;

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({super.key, required this.project});

  final ProjectUtils project;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColors.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          //Project image
          Image.asset(
            project.image,
            height: 140,
            width: 260,
            fit: BoxFit.cover,
          ),
          //title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.title,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: CustomColors.whitePrimary),
            ),
          ),
          //subtitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subtitle,
              style: const TextStyle(
                fontSize: 12,
                color: CustomColors.whiteSecondary,
              ),
            ),
          ),
          const Spacer(),
          //footer
          Container(
            color: CustomColors.bgLight1,
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Row(
              children: [
                const Text(
                  'Available on:',
                  style: TextStyle(
                    color: CustomColors.yellowSecondary,
                    fontSize: 10,
                  ),
                ),
                const Spacer(),
                if (project.androidLink != null)
                  InkWell(
                    onTap: () {
                      //fix  later
                      // js.context.callMethod(
                      //   'open',
                      //   [project.androidLink],
                      // );
                    },
                    child: Image.asset(
                      'assets/images/android_icon.png',
                      width: 17,
                    ),
                  ),
                if (project.iosLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () {
                        //fix later
                        // js.context.callMethod(
                        //   'open',
                        //   [project.iosLink],
                        // );
                      },
                      child: Image.asset(
                        'assets/images/apple_icon.png',
                        width: 17,
                        color: Colors.white,
                      ),
                    ),
                  ),
                if (project.webLink != null)
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 6,
                    ),
                    child: InkWell(
                      onTap: () {
                        //fix later
                        // js.context.callMethod(
                        //   context,
                        //   [project.webLink],
                        // );
                      },
                      child: Image.asset(
                        'assets/images/web_icon.png',
                        width: 17,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

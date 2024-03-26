import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/constants/sns_links.dart';
import 'dart:js' as js;
import 'package:my_portfolio/widgets/custom_text_field_widget.dart';

class ContackSectionWidget extends StatelessWidget {
  const ContackSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColors.bgLight1,
      child: Column(
        children: [
          const Text(
            'Get in touch',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: CustomColors.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
              maxHeight: 100,
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= kMinDesktopWitdh) {
                  return buildnameEmailFildDesktop();
                }

                return buildnameEmailFildMobile();
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: const CustomTextFieldWidget(
              hintText: 'Your messages ',
              maxLines: 12,
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          //send message
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Get in touch',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: const Divider(),
          ),
          const SizedBox(
            height: 15,
          ),
          //SNS icon button links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod(
                    'open',
                    [
                      SnsLinks.linkedin,
                    ],
                  );
                },
                child: Image.asset(
                  'assets/icons/linkedin.png',
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/icons/github2.png',
                  width: 28,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row buildnameEmailFildDesktop() {
    return const Row(
      children: [
        Flexible(
          child: CustomTextFieldWidget(
            hintText: 'Your name ',
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Flexible(
          child: CustomTextFieldWidget(
            hintText: 'Your email ',
          ),
        ),
      ],
    );
  }

  Column buildnameEmailFildMobile() {
    return const Column(
      children: [
        Flexible(
          child: CustomTextFieldWidget(
            hintText: 'Your name ',
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Flexible(
          child: CustomTextFieldWidget(
            hintText: 'Your email ',
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/widgets/contact_section.dart';
import 'package:my_portfolio/widgets/drower_mobile.dart';
import 'package:my_portfolio/widgets/footer_widget.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';
import 'package:my_portfolio/widgets/main_mobile.dart';
import 'package:my_portfolio/widgets/project_section_widget.dart';
import 'package:my_portfolio/widgets/skills_desktop.dart';
import 'package:my_portfolio/widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();

  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return LayoutBuilder(
      builder: (context, constrints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColors.scaffoldBg,
          endDrawer: constrints.maxWidth >= kMinDesktopWitdh
              ? null
              : DrawerMobile(onNavItemTap: (int navIndex) {
                  scaffoldKey.currentState?.closeEndDrawer();
                  //call function
                  scrolltoSection(navIndex);
                }),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  key: navbarKeys.first,
                ),
                // // Main

                if (constrints.maxWidth >= kMinDesktopWitdh)
                  HeaderDesktop(
                    onNavMenuTab: (int navIndex) {
                      scrolltoSection(navIndex);
                      //call function
                    },
                  )
                else
                  HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
                if (constrints.maxWidth >= kMinDesktopWitdh)
                  const MainDesktopWidget()
                else
                  const MainMobileWidget(),

                //Skills
                Container(
                  key: navbarKeys[1],
                  width: screenWidth,
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                  color: CustomColors.bgLight1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //title
                      const Text(
                        'What I can do ',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.whitePrimary,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      //platform and skills
                      if (constrints.maxWidth >= kMedDesktopWitdh)
                        const SkillsDesktopWidget()
                      else
                        const SkillsMobileWidget(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // Projects
                ProjectSectionWidget(
                  key: navbarKeys[2],
                ),
                const SizedBox(
                  height: 30,
                ),
                //Contact
                ContackSectionWidget(
                  key: navbarKeys[3],
                ),
                const SizedBox(
                  height: 30,
                ),
                //Footer

                const FooterWidget(),
              ],
            ),
          ),
        );
      },
    );
  }

  void scrolltoSection(int navIndex) {
    // if (navIndex == 4) {
    //   //open blog page
    //   return;
    // }
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(microseconds: 800),
      curve: Curves.easeInOut,
    );
  }
}

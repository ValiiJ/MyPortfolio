import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:myportfolio/controllers/auth_controllers.dart';
import 'package:myportfolio/screens/project_screen.dart';

import 'package:social_media_buttons/social_media_button.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({
    super.key,
  });

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(8.0),
        children: [
          ListTile(
            title: const Text(
              'Home',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const SecondScreen(),
              //   ),
              // );
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text(
              'Projects',
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProjectsScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'About',
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'Info',
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
            onTap: () {},
          ),
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Valmir Jollxhiu',
          style: TextStyle(
              // color: Color.fromARGB(255, 19, 156, 23),

              color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              children: [
                // AnimatedTextKit(
                //   animatedTexts: [
                //     TypewriterAnimatedText(
                //       'Hi! Welcome there ',
                //       textStyle: const TextStyle(
                //         fontSize: 32.0,
                //         fontWeight: FontWeight.bold,
                //       ),
                //       speed: const Duration(milliseconds: 470),
                //     ),
                //   ],
                // ),
                // const Image(
                //   image: AssetImage(
                //     'assets/images/solo.jpeg',
                //   ),
                // ),
                const SizedBox(
                  height: 70,
                ),
                const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    "In Flutter, everything is a widget.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                    ),
                  ),

                  // Text(
                  //   'In Flutter, everything is a widget.',
                  //   style: TextStyle(
                  //     // color: Color.fromARGB(255, 19, 156, 23),
                  //     color: Colors.black,
                  //     fontSize: 40.0,
                  //     fontFamily: AutofillHints.fullStreetAddress,
                  //   ),
                  // ),
                ),

                const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Opacity(
                    opacity: 0.6,
                    child: Text(
                      'I am a Flutter developer with a strong professional approach in the field of Flutter application development.',
                      style: TextStyle(
                          fontSize: 23.0,
                          // color: Color.fromARGB(255, 19, 156, 23),
                          color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Image(
                  image: AssetImage(
                    'assets/images/soloe.jpeg',
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),

                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: ElevatedButton.icon(
                              icon: const Icon(
                                Icons.email,
                                color: Colors.black,
                              ),
                              label: const Text(
                                'Send me an email',
                                style: TextStyle(color: Colors.black),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        const SocialMediaButton.github(
                          url: 'https://www.github.com/valiij',
                          size: 27.0,
                        ),
                        const SocialMediaButton.linkedin(
                          url: 'https://www.linkedin.com/in/valmir-jollxhiu',
                          size: 27.0,
                        ),
                        SocialMediaButton.dribbble(
                          url: '',
                          size: 27.0,
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
                ),

                // const Card(
                //   margin: EdgeInsets.all(15.0),
                //   child: Padding(
                //     padding: EdgeInsets.all(8.0),
                //     child: Column(
                //       children: [
                //         ReadMore(),
                //       ],
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 100.0,
                ),

                Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'My Projects_',
                        textStyle: const TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                        ),
                        speed: const Duration(milliseconds: 470),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 90.0,
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(
                          left: 95,
                        ),
                        child: Image.asset(
                          'assets/images/flutter.png',
                          width: 120,
                          height: 120,
                        ),
                      ),
                      const Gap(10),
                      Container(
                        child: Image.asset(
                          'assets/images/firebase.png',
                          width: 120,
                          height: 120,
                        ),
                      ),
                      const Gap(10),
                      Container(
                        child: Image.asset(
                          'assets/images/html.png',
                          width: 120,
                          height: 120,
                        ),
                      ),
                      const Gap(10),
                      Container(
                        child: Image.asset(
                          'assets/images/css.png',
                          width: 120,
                          height: 120,
                        ),
                      ),
                      const Gap(10),
                      Container(
                        child: Image.asset(
                          'assets/images/javascript.png',
                          width: 120,
                          height: 120,
                        ),
                      ),
                      const Gap(10),
                      Container(
                        child: Image.asset(
                          'assets/images/github.png',
                          width: 120,
                          height: 120,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    Card(
                      margin: const EdgeInsets.all(10.0),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/error_1.jpeg',
                              fit: BoxFit.cover,
                            ),
                            const ListTile(
                              title: Text(
                                'Quiz_Shqip',
                                style: TextStyle(fontSize: 22),
                              ),
                              subtitle: Text('Përmbajtja'),
                              minVerticalPadding: 20,
                              subtitleTextStyle: TextStyle(
                                color: Colors.red,
                                fontSize: 22,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                shqipQuiz(); // Funksioni për të hapur linkun
                              },
                              child: Ink(
                                decoration: const BoxDecoration(),
                                child: InkWell(
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    child: const Text('See my project'),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.all(10.0),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/error_2.jpeg',
                              fit: BoxFit.cover,
                            ),
                            const ListTile(
                              title: Text(
                                'Stree',
                                style: TextStyle(fontSize: 22),
                              ),
                              subtitle: Text('Përmbajtja'),
                              minVerticalPadding: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                stree(); // Funksioni për të hapur linkun
                              },
                              child: Ink(
                                decoration: const BoxDecoration(),
                                child: InkWell(
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    child: const Text('See my project'),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.all(10.0),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/error_3.jpeg',
                              fit: BoxFit.cover,
                            ),
                            const ListTile(
                              title: Text(
                                'MyPortfolio',
                                style: TextStyle(fontSize: 22),
                              ),
                              subtitle: Text('Përmbajtja'),
                              minVerticalPadding: 20,
                            ),

                            // const Align(
                            //   alignment: Alignment.center,
                            //   child: Text('Shenimi ne mes'),
                            // ),
                            ElevatedButton(
                              onPressed: () {
                                myPortfolio(); // Funksioni për të hapur linkun
                              },
                              child: Ink(
                                decoration: const BoxDecoration(),
                                child: InkWell(
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    child: const Text('See my project'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        pageGit(); // Funksioni për të hapur linkun
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Ngjyra e sfondit
                        // Mund të shtoni edhe atributet e tjera të stilimit sipas dëshirës suaj
                      ),
                      child: Ink(
                        decoration: const BoxDecoration(),
                        child: InkWell(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: const Text(
                              'See more projects',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 120,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 25),
                      // child: AnimatedTextKit(
                      //   animatedTexts: [
                      //     TypewriterAnimatedText(
                      //       'About_',
                      //       textStyle: const TextStyle(
                      //         fontSize: 32.0,
                      //         fontWeight: FontWeight.bold,
                      //       ),
                      //       speed: const Duration(milliseconds: 470),
                      //     ),
                      //   ],
                      // ),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'About_',
                          style: TextStyle(
                            fontSize: 36.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    // const Text(
                    //   'About',
                    //   style: TextStyle(
                    //     fontSize: 32,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    //   textAlign: TextAlign.start,
                    // ),
                    const SizedBox(
                      height: 90,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 25, right: 25),
                      // decoration: const BoxDecoration(
                      //   image: DecorationImage(
                      //     image: AssetImage(
                      //       'assets/images/flutter.png',
                      //     ),
                      //   ),
                      // ),

                      child: const Text.rich(
                        TextSpan(
                          text: 'My name is ',
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.black54,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Valmir Jollxhiu.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 36,
                              ),
                            ),
                            TextSpan(
                              text:
                                  'I\'m programmer.I live in Prishtina but i call many places home.I like to read books.',
                              style: TextStyle(
                                fontSize: 32,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 25),
                  child: const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '_Contacts',
                      style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 90,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialMediaButton.github(
                      url: 'https://www.github.com/valiij',
                      size: 27.0,
                    ),
                    SocialMediaButton.linkedin(
                      url: 'https://www.linkedin.com/in/valmir-jollxhiu',
                    ),
                    SocialMediaButton.twitter(
                      url: 'https://twitter.com/valii_j',
                      size: 27.0,
                    ),
                    SocialMediaButton.instagram(
                      url: 'https://www.instagram.com/valiijollxhiu/',
                      size: 27.0,
                    ),
                    SocialMediaButton.stackoverflow(
                      url: '',
                      size: 27.0,
                    ),
                  ],
                ),

                const SizedBox(
                  height: 60,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '2023, ',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Text(
                        'Prishtinë',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

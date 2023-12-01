import 'package:url_launcher/url_launcher.dart';

void shqipQuiz() async {
  const url =
      'https://github.com/ValiiJ/quiz_shqip'; // Zëvendëso me linkun tënd në LinkedIn
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void stree() async {
  const url =
      'https://github.com/ValiiJ/Stree'; // Zëvendëso me linkun tënd në LinkedIn
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void myPortfolio() async {
  const url = 'https://github.com/ValiiJ/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void pageGit() async {
  const url = 'https://github.com/valiij';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

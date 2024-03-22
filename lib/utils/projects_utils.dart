class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/breakfastapp.png',
    title: 'Breatfast',
    subtitle: 'this is a great app',
    webLink: 'https://github.com/ValiiJ/foods_fit',
    androidLink: 'https://github.com/ValiiJ/foods_fit',
    iosLink: 'https://github.com/ValiiJ/foods_fit',
  ),
  ProjectUtils(
    image: 'assets/projects/streeapp.jpg',
    title: 'Stree',
    subtitle: 'this is a great app',
    webLink: 'https://github.com/ValiiJ/Stree',
    androidLink: 'https://github.com/ValiiJ/Stree',
    iosLink: 'https://github.com/ValiiJ/Stree',
  ),
  ProjectUtils(
    image: 'assets/projects/todoapp.png',
    title: 'ToDo',
    subtitle: 'this is a great app',
    webLink: 'https://github.com/ValiiJ/ToDo',
    iosLink: 'https://github.com/ValiiJ/ToDo',
  ),
  ProjectUtils(
    image: 'assets/projects/diceroll.png',
    title: 'DiceRoll',
    subtitle: 'this is a great app',
    webLink: 'https://github.com/ValiiJ/dice_roller',
    iosLink: 'https://github.com/ValiiJ/dice_roller',
  ),
];

List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/breakfastapp.png',
    title: 'FoodsFit',
    subtitle: 'Thit is test app',
    androidLink: 'https://github.com/ValiiJ/foods_fit',
    iosLink: 'https://github.com/ValiiJ/foods_fit',
    webLink: 'https://github.com/ValiiJ/foods_fit',
  ),
  ProjectUtils(
    image: 'assets/projects/diceroll.png',
    title: 'Diceroll',
    subtitle: 'Thit is test app',
    androidLink: 'https://github.com/ValiiJ/foods_fit',
    iosLink: 'https://github.com/ValiiJ/foods_fit',
  ),
  ProjectUtils(
    image: 'assets/projects/streeapp.jpg',
    title: 'StreeApp',
    subtitle: 'Thit is test app',
    androidLink: 'https://github.com/ValiiJ/foods_fit',
    iosLink: 'https://github.com/ValiiJ/foods_fit',
  ),
  ProjectUtils(
    image: 'assets/projects/todoapp.png',
    title: 'ToDo',
    subtitle: 'Thit is test app',
    androidLink: 'https://github.com/ValiiJ/foods_fit',
    iosLink: 'https://github.com/ValiiJ/foods_fit',
  ),
];

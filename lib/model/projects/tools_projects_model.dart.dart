class ToolProjectsModel {
  String title;
  String image;
  String info;
  List<String> stack;
  String live;
  String github;
  ToolProjectsModel(
      {required this.title,
      required this.image,
      required this.info,
      required this.stack,
      required this.live,
      required this.github});
}

List<ToolProjectsModel> toolProjectsList = [
  ToolProjectsModel(
      title: 'Quick Button',
      image: '',
      info:
          'A Flutter package that provides multiple customizable buttons for quick use',
      stack: ['Dart', 'Flutter'],
      live: 'http://pub.dev/packages/quick_button',
      github: 'https://github.com/pozadkey/quick_button'),
  ToolProjectsModel(
      title: 'Quick Button Second',
      image: '',
      info:
          'A Flutter package that provides multiple customizable buttons for quick use. A Flutter package that provides multiple customizable buttons for quick use. ',
      stack: ['Dart', 'Flutter'],
      live: 'http://pub.dev/packages/quick_button',
      github: 'https://github.com/pozadkey/quick_button'),
  ToolProjectsModel(
      title: 'Quick Button Third',
      image: '',
      info:
          'A Flutter package that provides multiple customizable buttons for quick use',
      stack: ['Dart', 'Flutter'],
      live: 'http://pub.dev/packages/quick_button',
      github: 'https://github.com/pozadkey/quick_button'),
];

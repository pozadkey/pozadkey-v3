class MobileProjectsModel {
  String title;
  String image;
  String info;
  List<String> stack;
  String playstore;
  String appstore;
  String github;
  MobileProjectsModel(
      {required this.title,
      required this.image,
      required this.info,
      required this.stack,
      required this.playstore,
      required this.appstore,
      required this.github});
}

List<MobileProjectsModel> mobileProjectsList = [
  MobileProjectsModel(
      title: 'OOU-LLB21',
      image: 'assets/images/oou-llb.JPG',
      info:
          'A cross-platform yearbook app for a university\'s law faculty, showcasing information about the faculty and its students on Android and iOS.',
      stack: ['Dart', 'Flutter'],
      playstore:
          'https://play.google.com/store/apps/details?id=com.pozadkey.oou_llb_21',
      appstore: 'https://apps.apple.com/ng/app/oou-llb21/id1632992447',
      github: 'https://github.com/pozadkey/oou-llb-21'),
  MobileProjectsModel(
      title: 'Xirapay (Coming Soon)',
      image: 'assets/images/xirapay.png',
      info:
          'A secure mobile app for effortless bill payments—airtime, data, electricity, and more.',
      stack: [
        'Dart',
        'Flutter',
        'Typescript',
        'Node.js',
        'Express',
        'JWT',
        'Postgres',
        'Prisma',
        'NodeMailer'
      ],
      playstore: '',
      appstore: '',
      github: ''),
  MobileProjectsModel(
      title: 'Block Rush',
      image: 'assets/images/block_rush.jpg',
      info:
          'A fun puzzle game where you strategically clear lines for the best scores.',
      stack: ['Dart', 'Flutter'],
      playstore:
          'https://play.google.com/store/apps/details?id=com.pozadkey.block_rush',
      appstore: '',
      github: 'https://github.com/pozadkey/block_rush'),
];

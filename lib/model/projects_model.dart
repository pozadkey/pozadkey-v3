class ProjectModel {
  final String type;
  final String title;
  final String info;
  final String? github;
  final String? live;
  final String? playstore;
  final String? appstore;

  ProjectModel({
    required this.type,
    required this.title,
    required this.info,
    this.github,
    this.live,
    this.playstore,
    this.appstore,
  });
}

List<ProjectModel> projectsList = [
  // ============================================================================
  // TOOLING PROJECTS
  // ============================================================================
  ProjectModel(
    type: 'tooling',
    title: 'Dockerclean',
    info: 'A CLI that safely cleans unused Docker resources by extending Docker commands.',
    github: 'https://github.com/pozadkey/dockerclean',
  ),
  ProjectModel(
    type: 'tooling',
    title: 'K8debug',
    info: 'A simple CLI tool for quickly debugging Kubernetes pods with one command.',
    github: 'https://github.com/pozadkey/k8sdebug',
  ),
  ProjectModel(
    type: 'tooling',
    title: 'Circlelyfe',
    info: 'A RESTful backend service for Circlelyfe, an innovative social media application.',
    live: '',
    github: 'https://github.com/pozadkey/circlelyfe-backend',
  ),
  ProjectModel(
    type: 'tooling',
    title: 'Quick Button',
    info: 'A Flutter package that provides multiple customizable buttons for quick use.',
    live: 'http://pub.dev/packages/quick_button',
    github: 'https://github.com/pozadkey/quick_button',
  ),
  ProjectModel(
    type: 'tooling',
    title: 'Graphql-Auth-api',
    info: 'A GraphQL authentication system designed to seamlessly authenticate users.',
    live: '',
    github: 'https://github.com/pozadkey/graphql-auth-api',
  ),

  // ============================================================================
  // APP PROJECTS
  // ============================================================================
  ProjectModel(
    type: 'app',
    title: 'Favex',
    info: 'An intuitive app for fast crypto trading, gift card exchange, and bill payments.',
    playstore: 'https://play.google.com/store/apps/details?id=com.myfavex.app&hl=en',
    appstore: 'https://apps.apple.com/ng/app/favex-giftcards-coins/id6477779239#information',
  ),
  ProjectModel(
    type: 'app',
    title: 'Xirapay',
    info: 'An app for bill payemtnsfor effortless bill payments—airtime, data, electricity, and more.',
    appstore: 'https://testflight.apple.com/join/75xwx6du',
  ),
  ProjectModel(
    type: 'app',
    title: 'MoodLift',
    info: 'A simple, uplifting app for tracking your mood.',
    playstore: 'https://play.google.com/store/apps/details?id=com.pozadkey.moodlift',
    github: 'https://github.com/pozadkey/moodlift',
  ),

  // ============================================================================
  // BLOG POSTS
  // ============================================================================
  
  ProjectModel(
    type: 'blog',
    title: 'Dockerclean — How I Learned to Stop Worrying and Love Safe Docker Cleanup',
    info: 'A safe, simple guide to cleaning up Docker without losing data.',
    live: 'https://dev.to/pozadkey/dockerclean-how-i-learned-to-stop-worrying-and-love-safe-docker-cleanup-1326',
  ),
  ProjectModel(
    type: 'blog',
    title: 'Create And Publish Dart Package For Flutter',
    info: 'Guide to creating and publishing a Dart package for Flutter on pub.dev.',
    live: 'https://dev.to/pozadkey/create-and-publish-dart-package-for-flutter-5ff8',
  ),
  ProjectModel(
    type: 'blog',
    title: 'Publishing Flutter App To Google Play Store - Part 2',
    info: 'Step-by-step guide to publishing a Flutter app on Google Play Store (Part 2).',
    live: 'https://dev.to/pozadkey/publishing-flutter-app-to-google-play-store-part-2-nkh',
  ),
  ProjectModel(
    type: 'blog',
    title: 'Publishing Flutter App To Google Play Store - Part 1',
    info: 'Step-by-step guide to publishing a Flutter app on Google Play Store (Part 1).',
    live: 'https://dev.to/pozadkey/publishing-flutter-app-to-google-play-store-part-1-325h',
  ),
];

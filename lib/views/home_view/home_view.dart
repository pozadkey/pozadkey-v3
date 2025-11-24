import 'package:pozadkey_v3/shared/index.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final projectsKey = GlobalKey();
  final downloadKey = GlobalKey();
  static const sizedHeight = SizedBox(height: 40);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return ResponsiveScaffold(
          children: [
            sizedHeight,
            HeroSection(projectsKey: projectsKey),
            sizedHeight,
            const Projects(),
            sizedHeight,
            const Blog(),
            sizedHeight,
            const Contact(),
            sizedHeight,
            const Footer(),
            sizedHeight,
          ],
        );
      },
    );
  }
}

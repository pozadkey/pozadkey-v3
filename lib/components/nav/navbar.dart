import 'package:pozadkey_v3/shared/index.dart';

class NavBar extends StatefulWidget {
  final GlobalKey projectsKey;

  const NavBar({
    required this.projectsKey,
    super.key,
  });

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width <= 890) {
        return NavBarMobile(projectsKey: widget.projectsKey);
      } else {
        return NavBarDesktop(projectsKey: widget.projectsKey);
      }
    });
  }
}

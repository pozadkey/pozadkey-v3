import 'package:pozadkey_v3/shared/index.dart';

class NavBarDesktop extends StatefulWidget {
  final GlobalKey projectsKey;

  const NavBarDesktop({
    required this.projectsKey,
    super.key,
  });

  @override
  State<NavBarDesktop> createState() => _NavBarDesktopState();
}

class _NavBarDesktopState extends State<NavBarDesktop> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: GeneralColors.bgdColor,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: width <= 1550
                ? const EdgeInsets.fromLTRB(50, 20, 50, 20)
                : const EdgeInsets.fromLTRB(250, 20, 250, 20),
            width: 2000,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    NavLogo(
                      myColor: Color(0xFFA7A7A7),
                      logoTextSize: 16,
                      iconsSize: 8,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

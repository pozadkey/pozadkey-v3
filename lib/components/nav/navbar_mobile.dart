import 'package:pozadkey_v3/shared/index.dart';

IconData myMenu = Icons.menu_rounded;
double collapsableHeight = 0.0;

class NavBarMobile extends StatefulWidget {
  final GlobalKey projectsKey;

  const NavBarMobile({
    required this.projectsKey,
    super.key,
  });

  @override
  State<NavBarMobile> createState() => _NavBarMobileState();
}

class _NavBarMobileState extends State<NavBarMobile> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          color: GeneralColors.bgdColor,
          alignment: Alignment.center,
          padding: width <= 420
              ? const EdgeInsets.fromLTRB(10, 15, 10, 15)
              : const EdgeInsets.fromLTRB(20, 15, 20, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavLogo(
                myColor: const Color(0xFFA7A7A7),
                logoTextSize: width <= 340 ? 15 : 18,
                iconsSize: width <= 340 ? 5 : 8,
              ),
              NavBarButton(
                hamburgerSize: width <= 340 ? 15 : 30,
                onPressed: () {
                  if (_isVisible == false) {
                    setState(() {
                      _isVisible = true;
                      myMenu = FontAwesomeIcons.xmark;
                    });
                  } else if (_isVisible == true) {
                    setState(() {
                      _isVisible = false;
                      myMenu = FontAwesomeIcons.bars;
                    });
                  }
                },
                hamburgerColor: _isVisible == false
                    ? PrimaryButtonColors.bgColor
                    : PrimaryButtonColors.bgColor,
              )
            ],
          ),
        ),
        Visibility(
          visible: _isVisible,
          child: AnimatedContainer(
            color: GeneralColors.bgdColor,
            padding: width <= 420
                ? const EdgeInsets.fromLTRB(0, 0, 0, 0)
                : const EdgeInsets.only(top: 20.0, bottom: 20.0),
            duration: const Duration(milliseconds: 375),
            curve: Curves.easeInOut,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: width <= 420
                      ? const EdgeInsets.fromLTRB(10, 15, 10, 15)
                      : const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HoverTextButton(
                        onPressed: () {
                          setState(() {
                            _isVisible = false;
                            myMenu = FontAwesomeIcons.bars;
                          });
                          Scrollable.ensureVisible(
                            widget.projectsKey.currentContext!,
                            alignment: 0.0,
                            duration: const Duration(seconds: 1),
                            curve: Curves.ease,
                          );
                        },
                        title: 'Projects',
                        initialColor: GeneralColors.linkHoverText,
                        hoverColorIn: GeneralColors.linkHoverIn,
                        hoverColorOut: GeneralColors.linkHoverText,
                      ),
                      const SizedBox(height: 20.0),
                      HoverTextButton(
                        onPressed: () {
                          setState(() {
                            _isVisible = false;
                            myMenu = FontAwesomeIcons.bars;
                          });
                          launchURL(AppUri.email);
                        },
                        title: 'Contact',
                        initialColor: GeneralColors.linkHoverText,
                        hoverColorIn: GeneralColors.linkHoverIn,
                        hoverColorOut: GeneralColors.linkHoverText,
                      ),
                      const SizedBox(height: 20.0),
                      SizedBox(
                        width: width <= 550 ? double.infinity : 200,
                        child: PrimaryButton(
                          text: 'View Resume',
                          bgColor: Colors.transparent,
                          textColor: const Color(0xCCB5B5B5),
                          borderColor: const Color.fromARGB(204, 119, 119, 119),
                          onPressed: () => launchURL(AppUri.resume),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

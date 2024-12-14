// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_constructors_in_immutables, depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pozadkey_v3/components/nav/navbar_items.dart';
import 'package:pozadkey_v3/utils/constants/uri.dart';
import 'package:pozadkey_v3/utils/url_launcher.dart';
import '../../utils/constants/colors.dart';
import '../../widgets/buttons/primary_button.dart';
import 'navbar_button.dart';
import 'navbar_logo.dart';

IconData myMenu = Icons.menu_rounded;
double collapsableHeight = 0.0;

class NavBarMobile extends StatefulWidget {
  var projectsKey = GlobalKey();
  NavBarMobile({
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
              ? EdgeInsets.fromLTRB(10, 15, 10, 15)
              : EdgeInsets.fromLTRB(20, 15, 20, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavLogo(
                myColor: Color(0xFFA7A7A7),
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
                  ? EdgeInsets.fromLTRB(0, 0, 0, 0)
                  : EdgeInsets.only(
                      top: 20.0,
                      bottom: 20.0,
                    ),
              duration: Duration(milliseconds: 375),
              curve: Curves.easeInOut,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: width <= 420
                          ? EdgeInsets.fromLTRB(10, 15, 10, 15)
                          : EdgeInsets.fromLTRB(20, 15, 20, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          NavBarItems(
                              onPressed: () {
                                setState(() {
                                  _isVisible = false;
                                  myMenu = FontAwesomeIcons.bars;
                                });
                                Scrollable.ensureVisible(
                                    widget.projectsKey.currentContext!,
                                    alignment: 0.0,
                                    duration: Duration(seconds: 1),
                                    curve: Curves.ease);
                              },
                              title: 'Projects',
                              initialColor: GeneralColors.linkHoverText,
                              hoverColorIn: GeneralColors.linkHoverIn,
                              hoverColorOut: GeneralColors.linkHoverText),
                          SizedBox(
                            height: 20.0,
                          ),
                          NavBarItems(
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
                              hoverColorOut: GeneralColors.linkHoverText),
                          SizedBox(
                            height: 20.0,
                          ),
                          SizedBox(
                            width: width <= 550 ? double.infinity : 200,
                            child: PrimaryButton(
                                text: 'View Resume',
                                bgColor: Colors.transparent,
                                textColor: const Color(0xCCB5B5B5),
                                borderColor:
                                    const Color.fromARGB(204, 119, 119, 119),
                                onPressed: () => launchURL(AppUri.resume)),
                          )
                        ],
                      ))
                ],
              ),
            ))
      ],
    );
  }
}

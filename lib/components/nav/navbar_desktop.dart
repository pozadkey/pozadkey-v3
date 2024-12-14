// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:pozadkey_v3/components/nav/navbar_items.dart';
import 'package:pozadkey_v3/utils/constants/uri.dart';
import 'package:pozadkey_v3/utils/url_launcher.dart';
import '../../utils/constants/colors.dart';
import '../../widgets/buttons/primary_button.dart';
import 'navbar_logo.dart';

class NavBarDesktop extends StatefulWidget {
  var projectsKey = GlobalKey();
  NavBarDesktop({
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
                ? EdgeInsets.fromLTRB(50, 20, 50, 20)
                : EdgeInsets.fromLTRB(250, 20, 250, 20),
            width: 2000,
            child: Row(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NavBarItems(
                        onPressed: () => {
                              Scrollable.ensureVisible(
                                  widget.projectsKey.currentContext!,
                                  alignment: 0.0,
                                  duration: Duration(seconds: 1),
                                  curve: Curves.ease)
                            },
                        title: 'Projects',
                        initialColor: GeneralColors.linkHoverText,
                        hoverColorIn: GeneralColors.linkHoverIn,
                        hoverColorOut: GeneralColors.linkHoverText),
                    SizedBox(
                      width: 15,
                    ),
                    NavBarItems(
                        onPressed: () => launchURL(AppUri.email),
                        title: 'Contact',
                        initialColor: GeneralColors.linkHoverText,
                        hoverColorIn: GeneralColors.linkHoverIn,
                        hoverColorOut: GeneralColors.linkHoverText),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 200,
                        child: PrimaryButton(
                            text: 'View Resume',
                            bgColor: Colors.transparent,
                            textColor: const Color(0xCCB5B5B5),
                            borderColor:
                                const Color.fromARGB(204, 119, 119, 119),
                            onPressed: () => launchURL(AppUri.resume))),
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

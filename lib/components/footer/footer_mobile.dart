// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pozadkey_v3/utils/constants/colors.dart';
import 'package:pozadkey_v3/utils/constants/icons.dart';
import 'package:pozadkey_v3/utils/constants/uri.dart';
import 'package:pozadkey_v3/utils/url_launcher.dart';
import 'package:pozadkey_v3/widgets/icons/icon_rounded.dart';
import 'footer_items.dart';

class FooterMobile extends StatefulWidget {
  const FooterMobile({super.key});

  @override
  State<FooterMobile> createState() => _FooterMobileState();
}

class _FooterMobileState extends State<FooterMobile> {
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('y').format(now);

    return Container(
      padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
      color: GeneralColors.bgdColor,
      alignment: Alignment.bottomCenter,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconRounded(
                icon: AppIcons.github,
                onPressed: () {
                  launchURL(AppUri.github);
                },
              ),
              SizedBox(width: 10),
              IconRounded(
                icon: AppIcons.linkedIn,
                onPressed: () {
                  launchURL(AppUri.linkedIn);
                },
              ),
              SizedBox(width: 10),
              IconRounded(
                icon: AppIcons.x,
                onPressed: () {
                  launchURL(AppUri.x);
                },
              ),
              SizedBox(width: 10),
              IconRounded(
                icon: AppIcons.whatsapp,
                onPressed: () {
                  launchURL(AppUri.whatsapp);
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          FooterItems(
              onPressed: () {},
              title: '© $formattedDate. Damilare Ajakaiye.',
              initialColor: GeneralColors.linkHoverText,
              hoverColorIn: GeneralColors.linkHoverIn,
              hoverColorOut: GeneralColors.linkHoverText),
        ],
      ),
    );
  }
}

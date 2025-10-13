// ignore_for_file: prefer_const_constructors, unused_field, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pozadkey_v3/utils/constants/colors.dart';
import 'package:pozadkey_v3/utils/constants/icons.dart';
import 'package:pozadkey_v3/utils/constants/uri.dart';
import 'package:pozadkey_v3/utils/url_launcher.dart';
import 'package:pozadkey_v3/widgets/icons/icon_rounded.dart';

import 'footer_items.dart';

class FooterDesktop extends StatefulWidget {
  const FooterDesktop({super.key});

  @override
  State<FooterDesktop> createState() => _FooterDesktopState();
}

class _FooterDesktopState extends State<FooterDesktop> {
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('y').format(now);

    return Container(
      width: double.infinity, // Full width for the footer
      padding: EdgeInsets.fromLTRB(200, 100, 200, 50),
      color: GeneralColors.bgdColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     IconRounded(
          //       icon: AppIcons.github,
          //       onPressed: () {
          //         launchURL(AppUri.github);
          //       },
          //     ),
          //     SizedBox(width: 10),
          //     IconRounded(
          //       icon: AppIcons.linkedIn,
          //       onPressed: () {
          //         launchURL(AppUri.linkedIn);
          //       },
          //     ),
          //     SizedBox(width: 10),
          //     IconRounded(
          //       icon: AppIcons.x,
          //       onPressed: () {
          //         launchURL(AppUri.x);
          //       },
          //     ),
          //     SizedBox(width: 10),
          //     IconRounded(
          //       icon: AppIcons.whatsapp,
          //       onPressed: () {
          //         launchURL(AppUri.whatsapp);
          //       },
          //     ),
          //   ],
          // ),
          // SizedBox(height: 20),
          FooterItems(
              onPressed: () {},
              title: 'Damilare Ajakaiye | Copyright © $formattedDate',
              initialColor: GeneralColors.linkHoverText,
              hoverColorIn: GeneralColors.linkHoverIn,
              hoverColorOut: GeneralColors.linkHoverText),
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pozadkey_v3/utils/constants/uri.dart';
import 'package:pozadkey_v3/utils/url_launcher.dart';
import 'package:pozadkey_v3/widgets/buttons/primary_button.dart';
import 'package:url_launcher/url_launcher.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final headerFont =
        Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 24);
    final subHeaderFont =
        Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 14);
    return Container(
      padding: width >= 800
          ? EdgeInsets.fromLTRB(110, 30, 110, 30)
          : EdgeInsets.fromLTRB(20, 30, 20, 30),
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
        width: 800,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.0),
          color: Color.fromRGBO(15, 15, 15, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Ready to Build Your New Project?',
                textAlign: TextAlign.center, style: headerFont),
            SizedBox(
              height: 20,
            ),
            Text('Let’s transform your ideas into reality',
                textAlign: TextAlign.center, style: subHeaderFont),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 200,
                child: PrimaryButton(
                    text: '→ hello@pozadkey.com',
                    bgColor: const Color(0xCC262626),
                    textColor: const Color(0xCCB5B5B5),
                    borderColor: const Color.fromARGB(204, 119, 119, 119),
                    onPressed: () => launchURL(AppUri.email))),
          ],
        ),
      ),
    );
  }
}

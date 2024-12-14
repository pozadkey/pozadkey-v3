// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pozadkey_v3/responsive/responsive.dart';
import 'package:pozadkey_v3/utils/constants/uri.dart';
import 'package:pozadkey_v3/utils/url_launcher.dart';
import 'package:pozadkey_v3/widgets/buttons/primary_button.dart';

class Desktop extends StatefulWidget {
  const Desktop({
    super.key,
  });

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    final headerFont =
        Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 40);
    final subHeaderFont = Theme.of(context).textTheme.titleMedium;
    return Responsive(
      child: SizedBox(
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 800,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.0),
                color: Color.fromARGB(255, 24, 24, 24),
              ),
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Column(
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
            )
          ],
        ),
      ),
    );
  }
}

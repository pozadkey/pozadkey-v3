// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pozadkey_v3/model/stack_model.dart';
import 'package:pozadkey_v3/responsive/responsive.dart';
import 'package:pozadkey_v3/utils/constants/uri.dart';
import 'package:pozadkey_v3/utils/url_launcher.dart';
import 'package:pozadkey_v3/widgets/buttons/primary_button.dart';

class Desktop extends StatefulWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final headerFont =
        Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 40);
    final textFont = Theme.of(context).textTheme.displaySmall;
    return Responsive(
      child: SizedBox(
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: width <= 1550
                  ? const EdgeInsets.fromLTRB(20, 0, 20, 0)
                  : const EdgeInsets.fromLTRB(100, 40, 100, 40),
              child: Column(
                children: [
                  Text(
                    'Core Technologies',
                    style: headerFont,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: SingleChildScrollView(
                      child: Wrap(
                        alignment: WrapAlignment.center, // Centers the items
                        spacing: 8, // Horizontal spacing between items
                        runSpacing: 8, // Vertical spacing between items
                        children: stackList.map((stacks) {
                          return Container(
                            width: 80, // Fixed width for each item
                            height: 30, // Fixed height for each item
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xFF1E1E1E),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            child: Text(
                              stacks.title,
                              style: textFont,
                              textAlign: TextAlign.center,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 150,
              child: PrimaryButton(
                  text: 'View Resume',
                  bgColor: const Color(0xCC262626),
                  textColor: const Color(0xCCB5B5B5),
                  borderColor: const Color.fromARGB(204, 119, 119, 119),
                  onPressed: () {
                    launchURL(AppUri.resume);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

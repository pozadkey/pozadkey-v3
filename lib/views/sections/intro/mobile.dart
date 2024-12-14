// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pozadkey_v3/widgets/buttons/primary_button.dart';

class Mobile extends StatefulWidget {
  var projectsKey = GlobalKey();
  Mobile({super.key, required this.projectsKey});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final headerFont =
        Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 34);
    final textFont =
        Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 16);

    return SizedBox(
      width: double.infinity,
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: width >= 800
                ? EdgeInsets.fromLTRB(110, 0, 110, 0)
                : EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 700,
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'Web'.toUpperCase(), style: headerFont),
                          TextSpan(
                            text: ' & '.toUpperCase(),
                            style: headerFont.copyWith(
                                color: const Color(0xCCB5B5B5)),
                          ),
                          TextSpan(
                              text: 'Mobile\n'.toUpperCase(),
                              style: headerFont),
                          TextSpan(
                            text: 'Engineer'.toUpperCase(),
                            style: headerFont.copyWith(
                                color: const Color(0xCCB5B5B5)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 700,
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(text: 'I\'m ', style: textFont),
                          TextSpan(
                              text: 'Damilare Ajakaiye',
                              style: textFont.copyWith(
                                  color: const Color(0xFFFFFFFF))),
                          TextSpan(
                            text:
                                ', a highly skilled and results-driven software engineer specializing in web and mobile development. My focus is on user-centered design and building accessible, innovative solutions. I\'m eager to contribute my expertise and collaborate with diverse industries to drive success.',
                            style: textFont,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                    width: 200,
                    child: PrimaryButton(
                      text: 'Explore Projects',
                      bgColor: const Color(0xCC262626),
                      textColor: const Color(0xCCB5B5B5),
                      borderColor: const Color.fromARGB(204, 119, 119, 119),
                      onPressed: () => Scrollable.ensureVisible(
                          widget.projectsKey.currentContext!,
                          alignment: 0.0,
                          duration: Duration(seconds: 1),
                          curve: Curves.ease),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

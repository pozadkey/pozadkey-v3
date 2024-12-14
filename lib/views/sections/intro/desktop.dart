// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pozadkey_v3/widgets/buttons/primary_button.dart';

class Desktop extends StatefulWidget {
  var projectsKey = GlobalKey();
  Desktop({Key? key, required this.projectsKey}) : super(key: key);

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    final headerFont = Theme.of(context).textTheme.displayLarge;
    final textFont = Theme.of(context).textTheme.titleMedium;
    return SizedBox(
      height: 700,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 700,
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(text: 'Web'.toUpperCase(), style: headerFont),
                        TextSpan(
                          text: ' & '.toUpperCase(),
                          style: headerFont!
                              .copyWith(color: const Color(0xCCB5B5B5)),
                        ),
                        TextSpan(
                            text: 'Mobile\n'.toUpperCase(), style: headerFont),
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
                        TextSpan(
                          text: 'I\'m ',
                          style: textFont
                        ),
                        TextSpan(
                            text: 'Damilare Ajakaiye',
                            style: textFont!
                                .copyWith(color: const Color(0xFFFFFFFF))),
                        TextSpan(
                          text:
                              ', a highly skilled and results-driven software engineer specializing in web and mobile development. My focus is on user-centered design and building accessible, innovative solutions. I\'m eager to contribute my expertise and collaborate with diverse industries to drive success.',
                          style:textFont,
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
          )
        ],
      ),
    );
  }
}

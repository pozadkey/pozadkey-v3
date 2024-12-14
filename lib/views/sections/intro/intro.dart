// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

import 'package:pozadkey_v3/responsive/responsive.dart';
import 'package:pozadkey_v3/views/sections/intro/desktop.dart';
import 'package:pozadkey_v3/views/sections/intro/mobile.dart';

class Intro extends StatefulWidget {
  var projectsKey = GlobalKey();
  Intro({Key? key, required this.projectsKey}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Responsive(
      child: LayoutBuilder(builder: (context, constraints) {
        if (width <= 1200) {
          return Mobile(
            projectsKey: widget.projectsKey,
          );
        } else {
          return Desktop(
            projectsKey: widget.projectsKey,
          );
        }
      }),
    );
  }
}

// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'navbar_desktop.dart';
import 'navbar_mobile.dart';

class NavBar extends StatefulWidget {
  var projectsKey = GlobalKey();
  NavBar({
    required this.projectsKey,
    super.key,
  });

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width <= 890) {
        return NavBarMobile(
          projectsKey: widget.projectsKey,
        );
      } else {
        return NavBarDesktop(
          projectsKey: widget.projectsKey,
        );
      }
    });
  }
}

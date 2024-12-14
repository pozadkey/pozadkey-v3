// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace, must_be_immutable, library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../nav/navbar_mobile.dart';

class NavBarButton extends StatefulWidget {
  Color hamburgerColor;
  double hamburgerSize;
  final Function onPressed;
  
  NavBarButton(
      {super.key,
      required this.onPressed,
      required this.hamburgerSize,
      required this.hamburgerColor});

  @override
  _NavBarButtonState createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 55.0,
        child: InkWell(
          splashColor: Colors.white60,
          onTap: () {
            widget.onPressed();
          },
          child: Icon(
            myMenu,
            color: widget.hamburgerColor,
            size: widget.hamburgerSize,
          ),
        ));
  }
}

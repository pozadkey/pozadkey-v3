// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, must_be_immutable, unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabButton extends StatefulWidget {
  final String title;
  Color bgColor;
  Color bgColorOut;
  Color titleColor;
  Color titleColorIn;
  Color titleColorOut;
  Color myColor;
  final Function onPressed;
  TabButton(
      {Key? key,
      required this.title,
      required this.bgColor,
      required this.bgColorOut,
      required this.titleColor,
      required this.titleColorIn,
      required this.titleColorOut,
      required this.myColor,
      required this.onPressed})
      : super(key: key);

  @override
  State<TabButton> createState() => _TabButtonState();
}

class _TabButtonState extends State<TabButton> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final buttonFont = TextStyle(
        fontSize: 16,
        color: widget.titleColor,
        letterSpacing: 0.3,
        fontFamily: Theme.of(context).textTheme.displayLarge!.fontFamily,
        fontWeight: FontWeight.w500);

    return MouseRegion(
      onEnter: (m) {
        setState(() {
          widget.bgColor = widget.myColor;
          widget.titleColor = widget.titleColorIn;
        });
      },
      onExit: (m) {
        setState(() {
          widget.bgColor = widget.bgColorOut;
          widget.titleColor = widget.titleColorOut;
        });
      },
      child: TextButton(
        child: Padding(
          padding: width >= 800 ? EdgeInsets.all(10) : EdgeInsets.all(6),
          child: Text(
            widget.title,
            style: buttonFont,
            textAlign: TextAlign.center,
          ),
        ),
        onPressed: () {
          widget.onPressed();
        },
        style: TextButton.styleFrom(
          backgroundColor: widget.bgColor,
          side: BorderSide(color: widget.myColor, width: 1.5),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        ),
      ),
    );
  }
}

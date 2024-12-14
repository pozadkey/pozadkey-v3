// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace, must_be_immutable, library_private_types_in_public_api

import 'package:flutter/material.dart';

class FooterItems extends StatefulWidget {
  String title;
  Color initialColor;
  Color hoverColorIn;
  Color hoverColorOut;
  final Function onPressed;

  FooterItems(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.initialColor,
      required this.hoverColorIn,
      required this.hoverColorOut});

  @override
  _FooterItemsState createState() => _FooterItemsState();
}

class _FooterItemsState extends State<FooterItems> {
  @override
  Widget build(BuildContext context) {
    final navFont = Theme.of(context)
        .textTheme
        .displaySmall!
        .copyWith(color: widget.initialColor);

    return MouseRegion(
        onEnter: (m) {
          setState(() {
            widget.initialColor = widget.hoverColorIn;
          });
        },
        onExit: (m) {
          setState(() {
            widget.initialColor = widget.hoverColorOut;
          });
        },
        child: MaterialButton(
          padding: EdgeInsets.zero,
          minWidth: 0,
          onPressed: () {
            widget.onPressed();
          },
          child: Text(
            widget.title,
            style: navFont,
            textAlign: TextAlign.center,
          ),
        ));
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace, must_be_immutable, library_private_types_in_public_api

import 'package:flutter/material.dart';

class TabItems extends StatefulWidget {
  String title;
  double? fontSize;
  Color initialColor;
  Color hoverColorIn;
  Color hoverColorOut;
  final Function onPressed;

  TabItems(
      {super.key,
      required this.onPressed,
      required this.title,
      this.fontSize,
      required this.initialColor,
      required this.hoverColorIn,
      required this.hoverColorOut});

  @override
  _TabItemsState createState() => _TabItemsState();
}

class _TabItemsState extends State<TabItems> {
  @override
  Widget build(BuildContext context) {
    final navFont = Theme.of(context)
        .textTheme
        .displaySmall!
        .copyWith(color: widget.initialColor, fontSize: widget.fontSize ?? 14);

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
          ),
        ));
  }
}

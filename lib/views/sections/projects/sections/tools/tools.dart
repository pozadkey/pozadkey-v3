// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pozadkey_v3/responsive/responsive.dart';
import 'package:pozadkey_v3/views/sections/projects/sections/tools/desktop.dart';
import 'package:pozadkey_v3/views/sections/projects/sections/tools/mobile.dart';

class Tools extends StatefulWidget {
  const Tools({
    Key? key,
  }) : super(key: key);

  @override
  State<Tools> createState() => _ToolsState();
}

class _ToolsState extends State<Tools> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Responsive(
      child: LayoutBuilder(builder: (context, constraints) {
        if (width <= 1031) {
          return Mobile();
        } else {
          return Desktop();
        }
      }),
    );
  }
}

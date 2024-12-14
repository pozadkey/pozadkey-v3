// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pozadkey_v3/responsive/responsive.dart';
import 'package:pozadkey_v3/views/sections/projects/desktop.dart';
import 'package:pozadkey_v3/views/sections/projects/mobile.dart';

class Projects extends StatefulWidget {
  const Projects({
    Key? key,
  }) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
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

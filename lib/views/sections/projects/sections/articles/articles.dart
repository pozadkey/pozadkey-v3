// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pozadkey_v3/responsive/responsive.dart';
import 'package:pozadkey_v3/views/sections/projects/sections/articles/desktop.dart';
import 'package:pozadkey_v3/views/sections/projects/sections/articles/mobile.dart';

class Articles extends StatefulWidget {
  const Articles({
    Key? key,
  }) : super(key: key);

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
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

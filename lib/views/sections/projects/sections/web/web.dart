// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pozadkey_v3/responsive/responsive.dart';
import 'package:pozadkey_v3/views/sections/projects/sections/web/desktop.dart';
import 'package:pozadkey_v3/views/sections/projects/sections/web/mobile.dart';

class Web extends StatefulWidget {
  const Web({
    Key? key,
  }) : super(key: key);

  @override
  State<Web> createState() => _WebState();
}

class _WebState extends State<Web> {
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

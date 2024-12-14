// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pozadkey_v3/responsive/responsive.dart';
import 'package:pozadkey_v3/views/sections/projects/sections/mobile/desktop.dart';
import 'package:pozadkey_v3/views/sections/projects/sections/mobile/mobile.dart';

class MobileProj extends StatefulWidget {
  const MobileProj({
    Key? key,
  }) : super(key: key);

  @override
  State<MobileProj> createState() => _MobileProjState();
}

class _MobileProjState extends State<MobileProj> {
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

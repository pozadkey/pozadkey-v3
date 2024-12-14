// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pozadkey_v3/responsive/responsive.dart';
import 'package:pozadkey_v3/views/sections/contact/desktop.dart';
import 'package:pozadkey_v3/views/sections/contact/mobile.dart';

class Contact extends StatefulWidget {
  const Contact({
    super.key,
  });

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Responsive(
      child: LayoutBuilder(builder: (context, constraints) {
        if (width <= 1200) {
          return Mobile();
        } else {
          return Desktop();
        }
      }),
    );
  }
}

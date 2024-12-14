// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pozadkey_v3/model/stack_model.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final headerFont =
        Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 24);
    final textFont =
        Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 14);

    return Container(
        width: double.infinity,
        padding: width >= 800
            ? EdgeInsets.fromLTRB(110, 0, 110, 0)
            : EdgeInsets.fromLTRB(20, 0,20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Core Technologies',
              style: headerFont,
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: SingleChildScrollView(
                child: Wrap(
                  alignment: WrapAlignment.center, // Centers the items
                  spacing: 8, // Horizontal spacing between items
                  runSpacing: 8, // Vertical spacing between items
                  children: stackList.map((stacks) {
                    return Container(
                      width: 80, // Fixed width for each item
                      height: 30, // Fixed height for each item
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xFF1E1E1E),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                      child: Text(
                        stacks.title,
                        style: textFont,
                        textAlign: TextAlign.center,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ));
  }
}

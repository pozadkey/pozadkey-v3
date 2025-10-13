// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:pozadkey_v3/components/footer/footer.dart';
import 'package:pozadkey_v3/components/nav/navbar.dart';
import 'package:pozadkey_v3/utils/constants/colors.dart';
import 'package:pozadkey_v3/views/sections/about/about.dart';
import 'package:pozadkey_v3/views/sections/contact/contact.dart';
import 'package:pozadkey_v3/views/sections/intro/intro.dart';
import 'package:pozadkey_v3/views/sections/projects/projects.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final projectsKey = GlobalKey();
  final downloadKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.landscape) {
        return LayoutBuilder(
            builder: (context, constraints) => Scaffold(
                  backgroundColor: GeneralColors.bgdColor,
                  body: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                                minHeight: constraints.maxHeight),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // NavBar(
                                //   projectsKey: projectsKey,
                                // ),
                                // Intro(
                                //   projectsKey: projectsKey,
                                // ),
                                // SizedBox(height: 60),
                                Projects(key: projectsKey),
                                // SizedBox(height: 60),
                                // // About(),
                                // SizedBox(height: 60),
                                // Contact(),
                                // // SizedBox(height: 30),
                                // Footer()
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ));
      } else {
        return LayoutBuilder(
            builder: (context, constraints) => Scaffold(
                  backgroundColor: GeneralColors.bgdColor,
                  body: Column(
                    children: [
                      NavBar(
                        projectsKey: projectsKey,
                      ),
                      Expanded(
                        child: Center(
                          child: SingleChildScrollView(
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                  minHeight: constraints.maxHeight),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(),
                                  Intro(
                                    projectsKey: projectsKey,
                                  ),
                                  SizedBox(height: 60),
                                  Projects(key: projectsKey),
                                  SizedBox(height: 60),
                                  About(),
                                  SizedBox(height: 60),
                                  Contact(),
                                  SizedBox(height: 30),
                                  Footer()
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ));
      }
    });
  }
}

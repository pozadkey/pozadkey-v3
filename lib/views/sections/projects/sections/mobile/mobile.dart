import 'package:flutter/material.dart';
import 'package:pozadkey_v3/model/projects/mobile_projects_model.dart';
import 'package:pozadkey_v3/utils/constants/icons.dart';
import 'package:pozadkey_v3/utils/url_launcher.dart';
import 'package:pozadkey_v3/widgets/icons/icon_rounded.dart';
import 'package:pozadkey_v3/widgets/image_loader.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    final headerFont =
        Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 40);
    final intoFont = Theme.of(context).textTheme.displayMedium;
    final stackFont = Theme.of(context).textTheme.displaySmall;

    return SizedBox(
      width: 1000,
      child: ListView.builder(
        itemCount: mobileProjectsList.length,
        shrinkWrap: true, // Ensures ListView takes only the required space
        physics:
            const NeverScrollableScrollPhysics(), // Prevent internal scrolling
        itemBuilder: (BuildContext context, int index) {
          final mobile = mobileProjectsList[index];
          return Padding(
            padding:
                const EdgeInsets.only(bottom: 20), // Add spacing between items
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          ImageLoader(
                  imagePath: mobile.image,
                  title: mobile.title,
                ),
                // Text Below the Container
                const SizedBox(height: 8), // Space between container and text
                Text(
                  mobile.title,
                  style: headerFont.copyWith(fontSize: 18),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 5),

                Text(
                  mobile.info,
                  style: intoFont,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 5),
                FittedBox(
                  child: Row(
                    children: mobile.stack
                        .map((tech) => Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(43, 43, 43, 1),
                                borderRadius: BorderRadius.circular(2.0)),
                            child: Text(
                              tech,
                              style: stackFont,
                            )))
                        .expand((widget) => [
                              widget,
                              const SizedBox(width: 10),
                            ])
                        .toList(),
                  ),
                ),
                const SizedBox(height: 8),
                 Row(
                children: [
                  if (mobile.playstore != '')
                    IconRounded(
                      icon: AppIcons.android,
                      onPressed: () {
                        launchURL(mobile.playstore);
                      },
                    ),
                  const SizedBox(width: 5),
                  if (mobile.appstore != '')
                    IconRounded(
                      icon: AppIcons.ios,
                      onPressed: () {
                        launchURL(mobile.appstore);
                      },
                    ),
                       const SizedBox(width: 5),
                  if (mobile.github != '')
                    IconRounded(
                      icon: AppIcons.github,
                      onPressed: () {
                        launchURL(mobile.github);
                      },
                    ),
                ],
              ),
                 const SizedBox(height: 10),
              ],
            ),
          );
        },
      ),
    );
  }
}

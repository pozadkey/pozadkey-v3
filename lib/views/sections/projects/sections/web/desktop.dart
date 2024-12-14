import 'package:flutter/material.dart';
import 'package:pozadkey_v3/model/projects/web_projects_model.dart';
import 'package:pozadkey_v3/utils/constants/icons.dart';
import 'package:pozadkey_v3/utils/url_launcher.dart';
import 'package:pozadkey_v3/widgets/icons/icon_rounded.dart';
import 'package:pozadkey_v3/widgets/image_loader.dart';

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final headerFont =
        Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 40);
    final intoFont = Theme.of(context).textTheme.displayMedium;
    final stackFont = Theme.of(context).textTheme.displaySmall;
    return SizedBox(
      width: 1200,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 570, // Max width for each grid item
          crossAxisSpacing: 10, // Horizontal spacing
          mainAxisSpacing: 10, // Vertical spacing
          childAspectRatio:
              width <= 980 ? 5 / 4 : 5 / 4.4, // Aspect ratio for grid items
        ),
        itemCount: webProjectsModelList.length,
        shrinkWrap: true, // Ensures GridView takes only required space
        physics:
            const NeverScrollableScrollPhysics(), // Prevent internal scroll
        itemBuilder: (BuildContext context, int index) {
          final web = webProjectsModelList[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageLoader(
                imagePath: web.image, 
                title: web.title, 
              ),
              // Text Below the Container
              const SizedBox(height: 8), // Space between container and text
              Text(
                web.title,
                style: headerFont.copyWith(fontSize: 18),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 5),
              Text(
                web.info,
                style: intoFont,
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 5),
              FittedBox(
                child: Row(
                  children: web.stack
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
                  if (web.live != '')
                    IconRounded(
                      icon: AppIcons.arrowRightTop,
                      onPressed: () {
                        launchURL(web.live);
                      },
                    ),
                  const SizedBox(width: 5),
                  if (web.github != '')
                    IconRounded(
                      icon: AppIcons.github,
                      onPressed: () {
                        launchURL(web.github);
                      },
                    ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

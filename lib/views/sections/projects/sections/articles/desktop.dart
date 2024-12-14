import 'package:flutter/material.dart';
import 'package:pozadkey_v3/model/projects/articles_model.dart';
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
        itemCount: articlesModelList.length,
        shrinkWrap: true, // Ensures GridView takes only required space
        physics:
            const NeverScrollableScrollPhysics(), // Prevent internal scroll
        itemBuilder: (BuildContext context, int index) {
          final articles = articlesModelList[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            ImageLoader(
                  imagePath: articles.image,
                  title: articles.title,
                ),
              // Text Below the Container
              const SizedBox(height: 8), // Space between container and text
              Text(
                articles.title,
                style: headerFont.copyWith(fontSize: 18),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8),
              IconRounded(
                icon: AppIcons.arrowRightTop,
                onPressed: () {
                  launchURL(articles.live);
                },
              ),
            ],
          );
        },
      ),
    );
  }
}

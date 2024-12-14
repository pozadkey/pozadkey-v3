import 'package:flutter/material.dart';
import 'package:pozadkey_v3/model/projects/articles_model.dart';
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

    return SizedBox(
      width: 1000,
      child: ListView.builder(
        itemCount: articlesModelList.length,
        shrinkWrap: true, // Ensures ListView takes only the required space
        physics:
            const NeverScrollableScrollPhysics(), // Prevent internal scrolling
        itemBuilder: (BuildContext context, int index) {
          final articles = articlesModelList[index];
          return Padding(
            padding:
                const EdgeInsets.only(bottom: 20), // Add spacing between items
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageLoader(
                  imagePath: articles.image,
                  title: articles.title,
                ),
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
                const SizedBox(height: 10),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pozadkey_v3/model/projects/tools_projects_model.dart.dart';
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
  int hoveredIndex = -1;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final titleFont =
        Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 24);
    final infoFont = Theme.of(context).textTheme.displayMedium;

    return SizedBox(
      child: GridView.builder(
        padding: EdgeInsets.zero, // REMOVE extra GridView padding
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 570,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: width <= 980 ? 5 / 4 : 5.3 / 4.4,
        ),
        itemCount: toolProjectsList.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, i) {
          final t = toolProjectsList[i];
          final hasImage = t.image.isNotEmpty;
          final isHovered = hoveredIndex == i;

          return MouseRegion(
            onEnter: (_) => setState(() => hoveredIndex = i),
            onExit: (_) => setState(() => hoveredIndex = -1),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 240),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                gradient: LinearGradient(
                  colors: isHovered
                      ? [Colors.grey.shade900, Colors.black]
                      : [Colors.grey.shade900, Colors.grey.shade900],
                ),
                border: Border.all(
                    color: isHovered
                        ? Colors.grey.shade700
                        : Colors.grey.shade900),
                boxShadow: isHovered
                    ? [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.35),
                            blurRadius: 18,
                            offset: const Offset(0, 8))
                      ]
                    : [],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min, // important!
                  children: [
                    // IMAGE OR PLACEHOLDER
                    ClipRRect(
                      borderRadius: BorderRadius.circular(3),
                      child: SizedBox(
                        height: 175,
                        width: double.infinity,
                        child: hasImage
                            ? Stack(
                                fit: StackFit.expand,
                                children: [
                                  ImageLoader(
                                      imagePath: t.image, title: t.title),
                                  if (isHovered)
                                    AnimatedOpacity(
                                      opacity: 0.18,
                                      duration:
                                          const Duration(milliseconds: 180),
                                      child: Container(color: Colors.black),
                                    ),
                                ],
                              )
                            : Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Colors.blueGrey.shade700,
                                    Colors.blueGrey.shade900
                                  ]),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  t.title,
                                  style:
                                      titleFont.copyWith(color: Colors.white70),
                                  textAlign: TextAlign.center,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      t.info,
                      style: infoFont,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),

                    const SizedBox(height: 10),

                    Row(
                      children: [
                        if (t.live.isNotEmpty)
                          IconRounded(
                            icon: AppIcons.arrowRightTop,
                            onPressed: () => launchURL(t.live),
                          ),
                        const SizedBox(width: 8),
                        if (t.github.isNotEmpty)
                          IconRounded(
                            icon: AppIcons.github,
                            onPressed: () => launchURL(t.github),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

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
  int hoveredIndex = -1;

  @override
  Widget build(BuildContext context) {
    final headerFont =
        Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 18);

    return SizedBox(
      width: 1200,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 570,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 5 / 4.4,
        ),
        itemCount: articlesModelList.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, i) {
          final a = articlesModelList[i];
          final hasImage = a.image != null && (a.image as String).isNotEmpty;
          final isHovered = hoveredIndex == i;

          return MouseRegion(
            onEnter: (_) => setState(() => hoveredIndex = i),
            onExit: (_) => setState(() => hoveredIndex = -1),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 240),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                gradient: LinearGradient(
                  colors: isHovered
                      ? [Colors.grey.shade900, Colors.black]
                      : [Colors.grey.shade900, Colors.grey.shade900],
                ),
                border: Border.all(
                    color: isHovered
                        ? Colors.grey.shade700
                        : Colors.grey.shade800),
                boxShadow: isHovered
                    ? [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.35),
                            blurRadius: 18,
                            offset: const Offset(0, 8))
                      ]
                    : [],
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(14)),
                      child: SizedBox(
                        height: 180,
                        width: double.infinity,
                        child: hasImage
                            ? Stack(fit: StackFit.expand, children: [
                                ImageLoader(imagePath: a.image, title: a.title),
                                if (isHovered)
                                  AnimatedOpacity(
                                      opacity: 0.18,
                                      duration:
                                          const Duration(milliseconds: 180),
                                      child: Container(color: Colors.black)),
                              ])
                            : Container(
                                padding: const EdgeInsets.all(20),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Colors.blueGrey.shade700,
                                    Colors.blueGrey.shade900
                                  ]),
                                ),
                                child: Text(a.title,
                                    style: headerFont.copyWith(
                                        color: Colors.white70),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis),
                              ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: IconRounded(
                          icon: AppIcons.arrowRightTop,
                          onPressed: () => launchURL(a.live)),
                    )
                  ]),
            ),
          );
        },
      ),
    );
  }
}

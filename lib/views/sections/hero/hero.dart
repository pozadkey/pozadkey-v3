import 'package:pozadkey_v3/shared/index.dart';

class HeroSection extends StatelessWidget {
  final GlobalKey projectsKey;
  const HeroSection({super.key, required this.projectsKey});

  @override
  Widget build(BuildContext context) {
    final headerFont = AppFonts.header(context);
    final textFont = Theme.of(context).textTheme.titleMedium;
    return Responsive(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: AppText.heroHeader,
                          style: headerFont),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    children: [
                      TextSpan(
                            text: AppText.heroDescription,
                        style: textFont,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  LinkText(
                    text: AppText.resumeCTA,
                    suffixIcon: AppIcons.arrowRightTop,
                    textColor: GeneralColors.linkHoverIn,
                    hoverColor: GeneralColors.linkHoverText,
                    onPressed: () {
                      launchURL(AppUri.resume);
                    },
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

import 'package:pozadkey_v3/shared/index.dart';

class SocialIconsRow extends StatelessWidget {
  const SocialIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconRounded(
          icon: AppIcons.message,
          onPressed: () {
            launchURL(AppUri.email);
          },
        ),
        const SizedBox(width: 10),
        IconRounded(
          icon: AppIcons.github,
          onPressed: () {
            launchURL(AppUri.github);
          },
        ),
        const SizedBox(width: 10),
        IconRounded(
          icon: AppIcons.linkedIn,
          onPressed: () {
            launchURL(AppUri.linkedIn);
          },
        ),
        const SizedBox(width: 10),
        IconRounded(
          icon: AppIcons.x,
          onPressed: () {
            launchURL(AppUri.x);
          },
        ),
      ],
    );
  }
}

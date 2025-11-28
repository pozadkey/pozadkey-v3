import 'package:pozadkey_v3/shared/index.dart';

class Blog extends StatefulWidget {
  const Blog({super.key});

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    final headerFont = AppFonts.subHeader(context);
    final subHeaderFont = Theme.of(context).textTheme.titleMedium;
    return Responsive(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppText.blogHeader,
              textAlign: TextAlign.left, style: headerFont),
          const SizedBox(height: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppText.blogDescription,
                textAlign: TextAlign.left,
                style: subHeaderFont,
              ),
              const SizedBox(
                height: 20,
              ),
              LinkText(
                text: AppText.blogCTA,
                suffixIcon: AppIcons.arrowRightTop,
                textColor: GeneralColors.linkHoverIn,
                hoverColor: GeneralColors.linkHoverText,
                onPressed: () {
                  launchURL(AppUri.blog);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

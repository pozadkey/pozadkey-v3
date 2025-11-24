import 'package:pozadkey_v3/shared/index.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    final headerFont = AppFonts.subHeader(context);
    final subHeaderFont = Theme.of(context).textTheme.titleMedium;
    return Responsive(
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppText.contactHeader,
                  textAlign: TextAlign.center,
                  style: headerFont,
                ),
                const SizedBox(height: 20),
                Text(
                  AppText.contactDescription,
                  textAlign: TextAlign.left,
                  style: subHeaderFont,
                ),
                const SizedBox(height: 20),
                const SocialIconsRow(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

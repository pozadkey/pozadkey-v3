import 'package:pozadkey_v3/shared/index.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('y').format(now);

    return Responsive(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HoverTextButton(
            onPressed: () {},
            title: 'Damilare Ajakaiye | Copyright © $formattedDate',
            initialColor: GeneralColors.linkHoverText,
            hoverColorIn: GeneralColors.linkHoverIn,
            hoverColorOut: GeneralColors.linkHoverText,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

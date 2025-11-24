import 'package:pozadkey_v3/shared/index.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final TextStyle? style;

  const SectionHeader({
    super.key,
    required this.title,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final headerFont = style ?? AppFonts.subHeader(context);
    
    return Text(
      title,
      textAlign: TextAlign.left,
      style: headerFont,
    );
  }
}

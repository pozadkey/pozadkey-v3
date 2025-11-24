import 'package:pozadkey_v3/shared/index.dart';

class DropdownImage extends StatelessWidget {
  final String image;
  const DropdownImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        image,
        width: 30,
        height: 30,
        fit: BoxFit.contain,
      ),
    );
  }
}

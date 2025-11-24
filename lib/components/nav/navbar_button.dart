import 'package:pozadkey_v3/shared/index.dart';

class NavBarButton extends StatefulWidget {
  final Color hamburgerColor;
  final double hamburgerSize;
  final VoidCallback onPressed;

  const NavBarButton({
    super.key,
    required this.onPressed,
    required this.hamburgerSize,
    required this.hamburgerColor,
  });

  @override
  State<NavBarButton> createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.0,
      child: InkWell(
        splashColor: Colors.white60,
        onTap: widget.onPressed,
        child: Icon(
          myMenu,
          color: widget.hamburgerColor,
          size: widget.hamburgerSize,
        ),
      ),
    );
  }
}

import 'package:pozadkey_v3/shared/index.dart';

class NavLogo extends StatefulWidget {
  final Color? myColor;
  final double? iconsSize;
  final double? logoTextSize;

  const NavLogo({super.key, this.myColor, this.iconsSize, this.logoTextSize});

  @override
  State<NavLogo> createState() => _NavLogoState();
}

class _NavLogoState extends State<NavLogo> {
  @override
  Widget build(BuildContext context) {
    final logoFont = Theme.of(context).textTheme.displayLarge!.copyWith(
          color: widget.myColor,
          fontWeight: FontWeight.w600,
          fontSize: widget.logoTextSize,
        );
    return MaterialButton(
      padding: EdgeInsets.zero,
      minWidth: 0,
      onPressed: () {
        Navigator.pushNamed(context, '/');
      },
      child: Row(
        children: [
          Image.asset(
            fit: BoxFit.cover,
            'assets/images/pozadkey-logo.png',
            scale: widget.iconsSize,
          ),
          const SizedBox(width: 5),
          Text(
            'POZADKEY',
            style: logoFont,
          ),
        ],
      ),
    );
  }
}

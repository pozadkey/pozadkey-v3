// ignore_for_file: prefer_const_constructors, must_be_immutable, depend_on_referenced_packages
import 'package:flutter/material.dart';

class NavLogo extends StatefulWidget {
  final Color? myColor;
  double? iconsSize;
  double? logoTextSize;

  NavLogo({super.key, this.myColor, this.iconsSize, this.logoTextSize});

  @override
  State<NavLogo> createState() => _NavLogoState();
}

class _NavLogoState extends State<NavLogo> {
  @override
  Widget build(BuildContext context) {
    //  final logoFont = TextStyle(
    //   fontSize: widget.logoTextSize,
    //   color: widget.myColor,
    //   letterSpacing: 0.7,
    //   fontFamily: 'ClashDisplay',
    //   fontWeight: FontWeight.w600);

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
          SizedBox(
            width: 5,
          ),
          Text(
            'POZADKEY',
            style: logoFont,
          ),
        ],
      ),
    );
  }
}

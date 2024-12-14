import 'package:flutter/material.dart';

import 'icon_img.dart';

class IconRounded extends StatefulWidget {
  final String icon;
  Color? iconColor;
  Color? bgColor;
  final double? height;
  final double? width;
  final double? radius;
  final VoidCallback? onPressed;

  IconRounded({
    super.key,
    required this.icon,
    this.iconColor,
    this.bgColor,
    this.height,
    this.width,
    this.radius,
    this.onPressed,
  });

  @override
  State<IconRounded> createState() => _IconRoundedState();
}

class _IconRoundedState extends State<IconRounded> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (m) {
        setState(() {
          widget.bgColor = Colors.white;
          widget.iconColor = const Color(0xCC262626);
        });
      },
      onExit: (m) {
        setState(() {
          widget.bgColor = const Color(0xCC262626);
          widget.iconColor = const Color(0xCCB5B5B5);
        });
      },
      child: MaterialButton(
        padding: EdgeInsets.zero,
        minWidth: 0,
        onPressed: widget.onPressed,
        child: CircleAvatar(
          radius: widget.radius ?? 18,
          backgroundColor: widget.bgColor ?? const Color(0xCC262626),
          child: IconImg(
            icon: widget.icon,
            iconColor: widget.iconColor ?? const Color(0xCCB5B5B5),
            height: widget.height ?? 18,
            width: widget.width ?? 18,
          ),
        ),
      ),
    );
  }
}

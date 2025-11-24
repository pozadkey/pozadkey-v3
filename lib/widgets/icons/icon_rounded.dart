import 'package:pozadkey_v3/shared/index.dart';

class IconRounded extends StatefulWidget {
  final String icon;
  final Color? iconColor;
  final Color? bgColor;
  final double? height;
  final double? width;
  final double? radius;
  final VoidCallback? onPressed;

  const IconRounded({
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
  late Color currentBgColor;
  late Color currentIconColor;

  @override
  void initState() {
    super.initState();
    currentBgColor = widget.bgColor ?? const Color(0xCC262626);
    currentIconColor = widget.iconColor ?? const Color(0xCCB5B5B5);
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          currentBgColor = Colors.white;
          currentIconColor = const Color(0xCC262626);
        });
      },
      onExit: (_) {
        setState(() {
          currentBgColor = widget.bgColor ?? const Color(0xCC262626);
          currentIconColor = widget.iconColor ?? const Color(0xCCB5B5B5);
        });
      },
      child: MaterialButton(
        padding: EdgeInsets.zero,
        minWidth: 0,
        onPressed: widget.onPressed,
        child: CircleAvatar(
          radius: widget.radius ?? 15,
          backgroundColor: currentBgColor,
          child: IconImg(
            icon: widget.icon,
            iconColor: currentIconColor,
            height: widget.height ?? 15,
            width: widget.width ?? 15,
          ),
        ),
      ),
    );
  }
}

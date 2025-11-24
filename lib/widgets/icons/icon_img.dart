import 'package:pozadkey_v3/shared/index.dart';

class IconImg extends StatefulWidget {
  final VoidCallback? onPressed;
  final String icon;
  final double? height;
  final double? width;
  final Color? iconColor;

  const IconImg({
    super.key,
    this.onPressed,
    required this.icon,
    this.height,
    this.width,
    this.iconColor,
  });

  @override
  State<IconImg> createState() => _IconImgState();
}

class _IconImgState extends State<IconImg> {
  @override
  Widget build(BuildContext context) {
    Widget iconWidget = SvgPicture.asset(
      widget.icon,
      height: widget.height ?? 23,
      width: widget.width ?? 23,
    );

    if (widget.iconColor != null) {
      iconWidget = ColorFiltered(
        colorFilter: ColorFilter.mode(
          widget.iconColor!,
          BlendMode.srcIn,
        ),
        child: iconWidget,
      );
    }

    return GestureDetector(
      onTap: widget.onPressed,
      child: iconWidget,
    );
  }
}

import 'package:pozadkey_v3/shared/index.dart';

class LinkText extends StatefulWidget {
  final String text;
  final String? prefixIcon;
  final String? suffixIcon;
  final Color? textColor;
  final Color? hoverColor;
  final VoidCallback? onPressed;

  const LinkText({
    super.key,
    required this.text,
    this.prefixIcon,
    this.suffixIcon,
    this.textColor,
    this.hoverColor,
    this.onPressed,
  });

  @override
  State<LinkText> createState() => _LinkTextState();
}

class _LinkTextState extends State<LinkText> {
  Color? currentColor;

  @override
  void initState() {
    super.initState();
    currentColor = widget.textColor ?? const Color(0xCCB5B5B5);
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          currentColor = widget.hoverColor ?? widget.textColor ?? Colors.white;
        });
      },
      onExit: (_) {
        setState(() {
          currentColor = widget.textColor ?? const Color(0xCCB5B5B5);
        });
      },
      child: GestureDetector(
        onTap: widget.onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.prefixIcon != null)
              IconImg(
                icon: widget.prefixIcon!,
                height: 14,
                width: 14,
                iconColor: currentColor,
              ),
            if (widget.prefixIcon != null) const SizedBox(width: 4),
            Text(
              widget.text,
              style: TextStyle(
                color: currentColor,
                fontSize: 16,
                fontFamily: 'GeistMono',
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                decorationColor: currentColor,
                decorationThickness: 1.5,
              ),
            ),
            if (widget.suffixIcon != null) const SizedBox(width: 10),
            if (widget.suffixIcon != null)
              IconImg(
                icon: widget.suffixIcon!,
                height: 14,
                width: 14,
                iconColor: currentColor,
              ),
          ],
        ),
      ),
    );
  }
}

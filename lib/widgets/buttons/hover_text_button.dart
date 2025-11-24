import 'package:pozadkey_v3/shared/index.dart';

class HoverTextButton extends StatefulWidget {
  final String title;
  final double? fontSize;
  final Color initialColor;
  final Color hoverColorIn;
  final Color hoverColorOut;
  final VoidCallback onPressed;
  final TextAlign? textAlign;

  const HoverTextButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.fontSize,
    required this.initialColor,
    required this.hoverColorIn,
    required this.hoverColorOut,
    this.textAlign,
  });

  @override
  State<HoverTextButton> createState() => _HoverTextButtonState();
}

class _HoverTextButtonState extends State<HoverTextButton> {
  late Color currentColor;

  @override
  void initState() {
    super.initState();
    currentColor = widget.initialColor;
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context)
        .textTheme
        .displaySmall!
        .copyWith(color: currentColor, fontSize: widget.fontSize ?? 14);

    return MouseRegion(
      onEnter: (_) {
        setState(() {
          currentColor = widget.hoverColorIn;
        });
      },
      onExit: (_) {
        setState(() {
          currentColor = widget.hoverColorOut;
        });
      },
      child: MaterialButton(
        padding: EdgeInsets.zero,
        minWidth: 0,
        onPressed: widget.onPressed,
        child: Text(
          widget.title,
          style: textStyle,
          textAlign: widget.textAlign ?? TextAlign.left,
        ),
      ),
    );
  }
}

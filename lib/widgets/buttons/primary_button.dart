import 'package:flutter/material.dart';
import 'package:pozadkey_v3/utils/constants/colors.dart';
import '../icons/icon_img.dart';

class PrimaryButton extends StatefulWidget {
  final String? text;
  final Widget? textWidget;
  Color? textColor;
  final double? textSize;
  final double? radiusSize;
  final String? icon;
  Color? bgColor;
  final double? buttonWidth;
  final VoidCallback? onPressed;
  final Color? borderColor;
  final double? verticalPadding;
  final double? horizontalPadding;

  PrimaryButton({
    super.key,
    this.text,
    this.onPressed,
    this.textWidget,
    this.textColor,
    this.icon,
    this.bgColor,
    this.buttonWidth,
    this.borderColor,
    this.verticalPadding,
    this.horizontalPadding,
    this.textSize,
    this.radiusSize,
  });

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final buttonFont = TextStyle(
      fontSize: widget.textSize ?? 14,
      color: widget.textColor ?? PrimaryButtonColors.textColor,
      fontFamily: 'ClashDisplay',
      fontWeight: FontWeight.w600,
    );

    return MouseRegion(
      onEnter: (m) {
        setState(() {
          widget.textColor = const Color(0xFFFFFFFF);
        });
      },
      onExit: (m) {
        setState(() {
          widget.textColor = const Color(0xCCB5B5B5);
        });
      },
      child: SizedBox(
        width: widget.buttonWidth ?? 10,
        child: TextButton(
          onPressed: widget.onPressed,
          style: TextButton.styleFrom(
            minimumSize: Size(widget.buttonWidth ?? width / 2.5, 60),
            backgroundColor: widget.bgColor ?? PrimaryButtonColors.bgColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(widget.radiusSize ?? 30.0),
            ),
            side: BorderSide(
              color: widget.borderColor ?? Colors.transparent,
              width: 1.0,
            ),
            padding: EdgeInsets.symmetric(
              vertical: widget.verticalPadding ?? 8.0,
              horizontal: widget.horizontalPadding ?? 10,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.icon != null) ...[
                IconImg(
                  icon: widget.icon!,
                  iconColor: widget.textColor ?? PrimaryButtonColors.textColor,
                  height: 30,
                  width: 30,
                ),
                const SizedBox(width: 5),
              ],
              if (widget.text != null)
                Text(
                  widget.text!,
                  style: buttonFont,
                  textAlign: TextAlign.center,
                )
              else if (widget.textWidget != null)
                widget.textWidget!,
            ],
          ),
        ),
      ),
    );
  }
}

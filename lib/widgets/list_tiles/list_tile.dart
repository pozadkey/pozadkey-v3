import 'package:flutter/material.dart';
import 'package:pozadkey_v3/widgets/icons/icon_img.dart';


import '../buttons/dropdown_image/dropdown_image.dart';
import '../icons/icon_rounded.dart';

class MyListTile extends StatefulWidget {
  final VoidCallback? onTap;
  final String? icon;
  final String? image;
  final String title;
  final String? subtitle;
  final String? trailingIcon;
  final String? trailingText; // Added this parameter
  final VoidCallback? trailingIconOnPressed;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final TextStyle? moneyFontStyle;

  final Color? iconColor;
  final Color? prefixIconColor;
  final Color? prefixBgdColor;

  const MyListTile({
    super.key,
    this.icon,
    this.image,
    required this.title,
    this.subtitle,
    this.onTap,
    this.trailingIcon,
    this.trailingText,
    this.trailingIconOnPressed,
    this.titleStyle,
    this.subtitleStyle,
    this.moneyFontStyle,
    this.iconColor,
    this.prefixIconColor,
    this.prefixBgdColor,
  });

  @override
  State<MyListTile> createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  @override
  Widget build(BuildContext context) {
    final titleFont = Theme.of(context).textTheme.displaySmall;
    final subtitleFont = Theme.of(context).textTheme.titleSmall;

    return Column(
      children: [
        ListTile(
          splashColor: Colors.transparent,
          contentPadding: EdgeInsets.zero,
          dense: true,
          leading: widget.icon == null
              ? null
              : IconRounded(
                  radius: 15,
                  icon: widget.icon!,
                  iconColor: widget.prefixIconColor,
                  bgColor: widget.prefixBgdColor,
                  height: 15,
                  width: 15,
                ),
          title: Text(
            widget.title,
            style: widget.titleStyle ?? titleFont,
          ),
          subtitle: widget.subtitle == null
              ? null
              : Text(
                  widget.subtitle!,
                  style: widget.subtitleStyle ?? subtitleFont,
                ),
          onTap: widget.onTap,
          trailing: widget.trailingIcon != null
              ? GestureDetector(
                  onTap: widget.trailingIconOnPressed,
                  child: IconImg(
                    icon: widget.trailingIcon!,
                    iconColor: widget.iconColor ?? titleFont!.color,
                    height: 25,
                    width: 25,
                  ),
                )
              : widget.image != null
                  ? DropdownImage(
                      image: widget.image!,
                    )
                  : widget.trailingText != null
                      ? Text(
                          widget.trailingText!,
                          style: widget.moneyFontStyle ?? subtitleFont,
                        )
                      : null,
        ),
      ],
    );
  }
}

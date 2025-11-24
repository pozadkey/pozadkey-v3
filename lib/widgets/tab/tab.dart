import 'package:pozadkey_v3/shared/index.dart';

class TabItems extends StatefulWidget {
  final String title;
  final double? fontSize;
  final Color initialColor;
  final Color hoverColorIn;
  final Color hoverColorOut;
  final VoidCallback onPressed;

  const TabItems({
    super.key,
    required this.onPressed,
    required this.title,
    this.fontSize,
    required this.initialColor,
    required this.hoverColorIn,
    required this.hoverColorOut,
  });

  @override
  State<TabItems> createState() => _TabItemsState();
}

class _TabItemsState extends State<TabItems> {
  late Color currentColor;

  @override
  void initState() {
    super.initState();
    currentColor = widget.initialColor;
  }

  @override
  void didUpdateWidget(TabItems oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialColor != widget.initialColor) {
      currentColor = widget.initialColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    final navFont = Theme.of(context)
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
          style: navFont,
        ),
      ),
    );
  }
}

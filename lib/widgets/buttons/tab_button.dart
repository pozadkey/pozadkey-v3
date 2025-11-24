import 'package:pozadkey_v3/shared/index.dart';

class TabButton extends StatefulWidget {
  final String title;
  final Color bgColor;
  final Color bgColorOut;
  final Color titleColor;
  final Color titleColorIn;
  final Color titleColorOut;
  final Color myColor;
  final VoidCallback onPressed;

  const TabButton({
    super.key,
    required this.title,
    required this.bgColor,
    required this.bgColorOut,
    required this.titleColor,
    required this.titleColorIn,
    required this.titleColorOut,
    required this.myColor,
    required this.onPressed,
  });

  @override
  State<TabButton> createState() => _TabButtonState();
}

class _TabButtonState extends State<TabButton> {
  late Color currentBgColor;
  late Color currentTitleColor;

  @override
  void initState() {
    super.initState();
    currentBgColor = widget.bgColor;
    currentTitleColor = widget.titleColor;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final buttonFont = TextStyle(
      fontSize: 16,
      color: currentTitleColor,
      letterSpacing: 0.3,
      fontFamily: Theme.of(context).textTheme.displayLarge!.fontFamily,
      fontWeight: FontWeight.w500,
    );

    return MouseRegion(
      onEnter: (_) {
        setState(() {
          currentBgColor = widget.myColor;
          currentTitleColor = widget.titleColorIn;
        });
      },
      onExit: (_) {
        setState(() {
          currentBgColor = widget.bgColorOut;
          currentTitleColor = widget.titleColorOut;
        });
      },
      child: TextButton(
        onPressed: widget.onPressed,
        style: TextButton.styleFrom(
          backgroundColor: currentBgColor,
          side: BorderSide(color: widget.myColor, width: 1.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
        child: Padding(
          padding:
              width >= 800 ? const EdgeInsets.all(10) : const EdgeInsets.all(6),
          child: Text(
            widget.title,
            style: buttonFont,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

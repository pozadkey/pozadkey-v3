import 'package:pozadkey_v3/shared/index.dart';

class ResponsiveScaffold extends StatelessWidget {
  final List<Widget> children;
  final Color? backgroundColor;

  const ResponsiveScaffold({
    super.key,
    required this.children,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Scaffold(
        backgroundColor: backgroundColor ?? GeneralColors.bgdColor,
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: children,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

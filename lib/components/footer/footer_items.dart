// import 'package:pozadkey_v3/shared/index.dart';

// class FooterItems extends StatefulWidget {
//   final String title;
//   final Color initialColor;
//   final Color hoverColorIn;
//   final Color hoverColorOut;
//   final VoidCallback onPressed;

//   const FooterItems({
//     super.key,
//     required this.onPressed,
//     required this.title,
//     required this.initialColor,
//     required this.hoverColorIn,
//     required this.hoverColorOut,
//   });

//   @override
//   State<FooterItems> createState() => _FooterItemsState();
// }

// class _FooterItemsState extends State<FooterItems> {
//   late Color currentColor;

//   @override
//   void initState() {
//     super.initState();
//     currentColor = widget.initialColor;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final navFont = Theme.of(context)
//         .textTheme
//         .displaySmall!
//         .copyWith(color: currentColor);

//     return MouseRegion(
//       onEnter: (_) {
//         setState(() {
//           currentColor = widget.hoverColorIn;
//         });
//       },
//       onExit: (_) {
//         setState(() {
//           currentColor = widget.hoverColorOut;
//         });
//       },
//       child: MaterialButton(
//         padding: EdgeInsets.zero,
//         minWidth: 0,
//         onPressed: widget.onPressed,
//         child: Text(
//           widget.title,
//           style: navFont,
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );
//   }
// }

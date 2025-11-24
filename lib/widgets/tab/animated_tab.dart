import 'package:pozadkey_v3/shared/index.dart';

class AnimatedTab extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onTap;

  const AnimatedTab({
    super.key,
    required this.title,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TabItems(
            onPressed: onTap,
            title: title,
            initialColor: isActive
                ? GeneralColors.linkHoverIn
                : GeneralColors.linkHoverText,
            hoverColorIn: GeneralColors.linkHoverIn,
            hoverColorOut: isActive
                ? GeneralColors.linkHoverIn
                : GeneralColors.linkHoverText,
          ),
          const SizedBox(height: 3),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: 2,
            width: isActive ? 24 : 0,
            color: GeneralColors.linkHoverIn,
          ),
        ],
      ),
    );
  }
}

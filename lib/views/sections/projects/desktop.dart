import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pozadkey_v3/views/sections/projects/sections/articles/articles.dart';
import 'package:pozadkey_v3/views/sections/projects/sections/mobile/mobile_projs.dart';
import 'package:pozadkey_v3/views/sections/projects/sections/tools/tools.dart';
import 'package:pozadkey_v3/views/sections/projects/sections/web/web.dart';
import 'package:pozadkey_v3/widgets/tab/tab.dart';
import 'package:pozadkey_v3/responsive/responsive.dart';
import 'package:pozadkey_v3/utils/constants/colors.dart';

// Define the provider globally
final projectDisplayProvider = StateProvider<Widget>((ref) => const Web());
final projectIndex = StateProvider<int>((ref) => 0);

class Desktop extends ConsumerStatefulWidget {
  const Desktop({super.key});

  @override
  ConsumerState<Desktop> createState() => _DesktopState();
}

class _DesktopState extends ConsumerState<Desktop> {
  @override
  Widget build(BuildContext context) {
    final headerFont =
        Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 40);

    final index = ref.watch(projectIndex);

    return Responsive(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Selected Projects',
            textAlign: TextAlign.left,
            style: headerFont,
          ),
          const SizedBox(height: 15),
          // Tabs Row
          SizedBox(
            child: Row(
              children: [
                _buildTab(context, ref, 'Web', const Web(), index, 0),
                const SizedBox(width: 15),
                _buildTab(context, ref, 'Mobile', const MobileProj(), index, 1),
                const SizedBox(width: 15),
                _buildTab(context, ref, 'Packages', const Tools(), index, 2),
                const SizedBox(width: 15),
                _buildTab(context, ref, 'Articles', const Articles(), index, 3),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Container(
            // color: Colors.red,
            child: ref.watch(projectDisplayProvider),
          ),
          // ref.watch(projectDisplayProvider),
        ],
      ),
    );
  }

  Widget _buildTab(BuildContext context, WidgetRef ref, String title,
      Widget view, int currentIndex, int tabIndex) {
    final isActive = currentIndex == tabIndex;

    return GestureDetector(
      onTap: () {
        ref.read(projectDisplayProvider.notifier).state = view;
        ref.read(projectIndex.notifier).state = tabIndex;
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TabItems(
            onPressed: () {
              ref.read(projectDisplayProvider.notifier).state = view;
              ref.read(projectIndex.notifier).state = tabIndex;
            },
            title: title,
            fontSize: 18,
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

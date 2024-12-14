import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Riverpod for state management
import 'package:pozadkey_v3/views/sections/projects/sections/articles/articles.dart';
import 'package:pozadkey_v3/views/sections/projects/sections/mobile/mobile_projs.dart';
import 'package:pozadkey_v3/views/sections/projects/sections/tools/tools.dart';
import 'package:pozadkey_v3/views/sections/projects/sections/web/web.dart';
import 'package:pozadkey_v3/widgets/tab/tab.dart';
// For launching URLs
// Local imports
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
    double width = MediaQuery.of(context).size.width;
    // Define the header font style
    final headerFont =
        Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 40);

    final index = ref.watch(projectIndex);

    return Responsive(
      child: Container(
        padding: width <= 1550
            ? const EdgeInsets.fromLTRB(20, 0, 20, 0)
            : const EdgeInsets.fromLTRB(100, 40, 100, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Header Section
            Text(
              'Projects',
              textAlign: TextAlign.left,
              style: headerFont,
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 1200,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TabItems(
                    onPressed: () {
                      ref.read(projectDisplayProvider.notifier).state =
                          const Web();
                      ref.read(projectIndex.notifier).state = 0;
                    },
                    title: 'Web',
                    fontSize: 18,
                    initialColor: index == 0
                        ? GeneralColors.linkHoverIn
                        : GeneralColors.linkHoverText,
                    hoverColorIn: index == 0
                        ? GeneralColors.linkHoverIn
                        : GeneralColors.linkHoverIn,
                    hoverColorOut: index == 0
                        ? GeneralColors.linkHoverIn
                        : GeneralColors.linkHoverText,
                  ),
                  const SizedBox(width: 15),
                  TabItems(
                    onPressed: () {
                      ref.read(projectDisplayProvider.notifier).state =
                          const MobileProj();
                      ref.read(projectIndex.notifier).state = 1;
                    },
                    title: 'Mobile',
                    fontSize: 18,
                    initialColor: index == 1
                        ? GeneralColors.linkHoverIn
                        : GeneralColors.linkHoverText,
                    hoverColorIn: index == 1
                        ? GeneralColors.linkHoverIn
                        : GeneralColors.linkHoverIn,
                    hoverColorOut: index == 1
                        ? GeneralColors.linkHoverIn
                        : GeneralColors.linkHoverText,
                  ),
                  const SizedBox(width: 15),
                  TabItems(
                    onPressed: () {
                      ref.read(projectDisplayProvider.notifier).state =
                          const Tools();
                      ref.read(projectIndex.notifier).state = 2;
                    },
                    title: 'Packages',
                    fontSize: 18,
                    initialColor: index == 2
                        ? GeneralColors.linkHoverIn
                        : GeneralColors.linkHoverText,
                    hoverColorIn: index == 2
                        ? GeneralColors.linkHoverIn
                        : GeneralColors.linkHoverIn,
                    hoverColorOut: index == 2
                        ? GeneralColors.linkHoverIn
                        : GeneralColors.linkHoverText,
                  ),
                  const SizedBox(width: 15),
                  TabItems(
                    onPressed: () {
                      ref.read(projectDisplayProvider.notifier).state =
                          const Articles();
                      ref.read(projectIndex.notifier).state = 3;
                    },
                    title: 'Articles',
                    fontSize: 18,
                    initialColor: index == 3
                        ? GeneralColors.linkHoverIn
                        : GeneralColors.linkHoverText,
                    hoverColorIn: index == 3
                        ? GeneralColors.linkHoverIn
                        : GeneralColors.linkHoverIn,
                    hoverColorOut: index == 3
                        ? GeneralColors.linkHoverIn
                        : GeneralColors.linkHoverText,
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ref.watch(projectDisplayProvider),
          ],
        ),
      ),
    );
  }
}

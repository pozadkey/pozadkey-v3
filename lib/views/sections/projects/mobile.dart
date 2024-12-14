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

class Mobile extends ConsumerStatefulWidget {
  const Mobile({super.key});

  @override
  ConsumerState<Mobile> createState() => _MobileState();
}

class _MobileState extends ConsumerState<Mobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // Define the header font style
    final headerFont =
        Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 24);

    final index = ref.watch(projectIndex);

    return Responsive(
      child: Container(
        padding: width <= 600
            ? const EdgeInsets.fromLTRB(20, 0, 20, 0)
            : const EdgeInsets.fromLTRB(120, 0, 120, 0),
        // padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Header Section
            Text(
              'Projects',
              style: headerFont,
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 1000,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TabItems(
                    onPressed: () {
                      ref.read(projectDisplayProvider.notifier).state =
                          const Web();
                      ref.read(projectIndex.notifier).state = 0;
                    },
                    title: 'Web',
                    fontSize: 16,
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
                  const SizedBox(width: 10),
                  TabItems(
                    onPressed: () {
                      ref.read(projectDisplayProvider.notifier).state =
                          const MobileProj();
                      ref.read(projectIndex.notifier).state = 1;
                    },
                    title: 'Mobile',
                    fontSize: 16,
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
                  const SizedBox(width: 10),
                  TabItems(
                    onPressed: () {
                      ref.read(projectDisplayProvider.notifier).state =
                          const Tools();
                      ref.read(projectIndex.notifier).state = 2;
                    },
                    title: 'Packages',
                    fontSize: 16,
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
                  const SizedBox(width: 10),
                  TabItems(
                    onPressed: () {
                      ref.read(projectDisplayProvider.notifier).state =
                          const Articles();
                      ref.read(projectIndex.notifier).state = 3;
                    },
                    title: 'Articles',
                    fontSize: 16,
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

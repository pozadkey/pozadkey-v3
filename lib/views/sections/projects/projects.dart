import 'package:pozadkey_v3/shared/index.dart';

final projectDisplayProvider = StateProvider<Widget>((ref) => const SizedBox());
final projectIndex = StateProvider<int>((ref) => 0);

class Projects extends ConsumerStatefulWidget {
  const Projects({super.key});

  @override
  ConsumerState<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends ConsumerState<Projects> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(projectDisplayProvider.notifier).state =
          _buildProjectsByType('app');
    });
  }

  @override
  Widget build(BuildContext context) {
    final headerFont = AppFonts.subHeader(context);
    final index = ref.watch(projectIndex);

    return Responsive(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Selected Work', textAlign: TextAlign.left, style: headerFont),
          const SizedBox(height: 15),
          SizedBox(
            child: Row(
              children: [
                AnimatedTab(
                  title: AppText.app,
                  isActive: index == 0,
                  onTap: () {
                    ref.read(projectDisplayProvider.notifier).state =
                        _buildProjectsByType('app');
                    ref.read(projectIndex.notifier).state = 0;
                  },
                ),
                const SizedBox(width: 20),
                AnimatedTab(
                  title: AppText.tooling,
                  isActive: index == 1,
                  onTap: () {
                    ref.read(projectDisplayProvider.notifier).state =
                        _buildProjectsByType('tooling');
                    ref.read(projectIndex.notifier).state = 1;
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ref.watch(projectDisplayProvider),
        ],
      ),
    );
  }

  Widget _buildProjectsByType(String type) {
    final filteredProjects = projectsList.where((p) => p.type == type).toList();
    return ProjectsGridView(projects: filteredProjects);
  }
}

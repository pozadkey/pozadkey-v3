import 'package:pozadkey_v3/shared/index.dart';

class ProjectsGridView extends StatefulWidget {
  final List<ProjectModel> projects;
  final bool isMobile;

  const ProjectsGridView({
    super.key,
    required this.projects,
    this.isMobile = false,
  });

  @override
  State<ProjectsGridView> createState() => _ProjectsGridViewState();
}

class _ProjectsGridViewState extends State<ProjectsGridView> {
  int hoveredIndex = -1;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (widget.isMobile || width <= 650) {
      return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: widget.projects.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: ProjectCard(
              key: ValueKey(i),
              project: widget.projects[i],
              isHovered: hoveredIndex == i,
              onHover: (index) {
                if (mounted) setState(() => hoveredIndex = index);
              },
              index: i,
            ),
          );
        },
      );
    }

    double getAspectRatio() {
      if (width <= 900) return 1.6;
      if (width <= 1200) return 2.0;
      return 2.4;
    }

    return GridView.builder(
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 570,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: getAspectRatio(),
      ),
      itemCount: widget.projects.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, i) {
        return ProjectCard(
          key: ValueKey(i),
          project: widget.projects[i],
          isHovered: hoveredIndex == i,
          onHover: (index) {
            if (mounted) setState(() => hoveredIndex = index);
          },
          index: i,
          isGridView: true,
        );
      },
    );
  }
}

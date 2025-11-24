import 'package:pozadkey_v3/shared/index.dart';

class ProjectCard extends StatefulWidget {
  final ProjectModel project;
  final bool isHovered;
  final ValueChanged<int> onHover;
  final int index;
  final bool isGridView;

  const ProjectCard({
    super.key,
    required this.project,
    required this.isHovered,
    required this.onHover,
    required this.index,
    this.isGridView = false,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    final titleFont =
        Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 24);
    final infoFont = Theme.of(context).textTheme.displayMedium;

    return MouseRegion(
      onEnter: (_) => widget.onHover(widget.index),
      onExit: (_) => widget.onHover(-1),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 240),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: widget.isHovered
                ? [Colors.grey.shade900, Colors.black]
                : [Colors.black, Colors.grey.shade900],
          ),
          border: Border.all(
            color: widget.isHovered ? Colors.grey.shade700 : Colors.grey.shade900,
          ),
          boxShadow: widget.isHovered
              ? [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.35),
                    blurRadius: 18,
                    offset: const Offset(0, 8),
                  )
                ]
              : [],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: widget.isGridView
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      widget.project.title,
                      style: titleFont.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.project.info,
                      style: infoFont,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    ProjectActionRow(project: widget.project),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.project.title,
                      style: titleFont.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      widget.project.info,
                      style: infoFont,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 12),
                    ProjectActionRow(project: widget.project),
                  ],
                ),
        ),
      ),
    );
  }
}

class ProjectActionRow extends StatelessWidget {
  final ProjectModel project;

  const ProjectActionRow({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (project.live != null && project.live!.isNotEmpty)
          IconRounded(
            icon: AppIcons.arrowRightTop,
            onPressed: () => launchURL(project.live!),
          ),
        if (project.live != null && project.live!.isNotEmpty)
          const SizedBox(width: 8),
        if (project.github?.isNotEmpty == true)
          IconRounded(
            icon: AppIcons.github,
            onPressed: () => launchURL(project.github!),
          ),
        if (project.github?.isNotEmpty == true) const SizedBox(width: 8),
        if (project.playstore != null && project.playstore!.isNotEmpty)
          IconRounded(
            icon: AppIcons.android,
            onPressed: () => launchURL(project.playstore!),
          ),
        if (project.playstore != null && project.playstore!.isNotEmpty)
          const SizedBox(width: 8),
        if (project.appstore != null && project.appstore!.isNotEmpty)
          IconRounded(
            icon: AppIcons.ios,
            onPressed: () => launchURL(project.appstore!),
          ),
      ],
    );
  }
}

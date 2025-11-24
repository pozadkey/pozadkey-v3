import 'package:pozadkey_v3/shared/index.dart';

final blogDisplayProvider = StateProvider<Widget>((ref) => const SizedBox());
final blogIndex = StateProvider<int>((ref) => 0);

class Blog extends ConsumerStatefulWidget {
  const Blog({super.key});

  @override
  ConsumerState<Blog> createState() => _BlogState();
}

class _BlogState extends ConsumerState<Blog> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(blogDisplayProvider.notifier).state = _buildBlogByType('blog');
    });
  }

  @override
  Widget build(BuildContext context) {
    final headerFont = AppFonts.subHeader(context);

    return Responsive(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Blog', textAlign: TextAlign.left, style: headerFont),
          const SizedBox(height: 15),
          ref.watch(blogDisplayProvider),
        ],
      ),
    );
  }

  Widget _buildBlogByType(String type) {
    final filteredBlogs = projectsList.where((p) => p.type == type).toList();
    return ProjectsGridView(projects: filteredBlogs);
  }
}

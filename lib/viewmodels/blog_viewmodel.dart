import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pozadkey_v3/model/projects_model.dart';

final blogViewModelProvider = StateNotifierProvider<BlogViewModel, BlogState>((ref) {
  return BlogViewModel();
});

class BlogState {
  final List<ProjectModel> blogs;

  BlogState({required this.blogs});

  BlogState copyWith({List<ProjectModel>? blogs}) {
    return BlogState(blogs: blogs ?? this.blogs);
  }
}

class BlogViewModel extends StateNotifier<BlogState> {
  BlogViewModel()
      : super(
          BlogState(
            blogs: projectsList.where((p) => p.type == 'blog').toList(),
          ),
        );
}

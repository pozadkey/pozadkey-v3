import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pozadkey_v3/model/projects_model.dart';

final projectsViewModelProvider = StateNotifierProvider<ProjectsViewModel, ProjectsState>((ref) {
  return ProjectsViewModel();
});

class ProjectsState {
  final List<ProjectModel> allProjects;
  final List<ProjectModel> filteredProjects;
  final int activeTabIndex;
  final String activeFilter;

  ProjectsState({
    required this.allProjects,
    required this.filteredProjects,
    required this.activeTabIndex,
    required this.activeFilter,
  });

  ProjectsState copyWith({
    List<ProjectModel>? allProjects,
    List<ProjectModel>? filteredProjects,
    int? activeTabIndex,
    String? activeFilter,
  }) {
    return ProjectsState(
      allProjects: allProjects ?? this.allProjects,
      filteredProjects: filteredProjects ?? this.filteredProjects,
      activeTabIndex: activeTabIndex ?? this.activeTabIndex,
      activeFilter: activeFilter ?? this.activeFilter,
    );
  }
}

class ProjectsViewModel extends StateNotifier<ProjectsState> {
  ProjectsViewModel()
      : super(
          ProjectsState(
            allProjects: projectsList,
            filteredProjects: projectsList.where((p) => p.type == 'app').toList(),
            activeTabIndex: 0,
            activeFilter: 'app',
          ),
        );

  void filterByType(String type, int tabIndex) {
    final filtered = state.allProjects.where((p) => p.type == type).toList();
    state = state.copyWith(
      filteredProjects: filtered,
      activeTabIndex: tabIndex,
      activeFilter: type,
    );
  }
}

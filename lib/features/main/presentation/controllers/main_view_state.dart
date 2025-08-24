part of 'main_view_cubit.dart';

final class MainViewState {
  final int currentIndex;

  MainViewState({required this.currentIndex});

  MainViewState copyWith({int? currentIndex}) {
    return MainViewState(currentIndex: currentIndex ?? this.currentIndex);
  }
}

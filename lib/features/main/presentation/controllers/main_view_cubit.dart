import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms_educational/features/courses/presentation/views/courses_view.dart';
import 'package:lms_educational/features/profile/presentation/views/profile_view.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

part 'main_view_state.dart';

class MainViewCubit extends Cubit<MainViewState> {
  MainViewCubit() : super(MainViewState(currentIndex: 0));

  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Icon(PhosphorIcons.bookOpen()),
      label: 'Courses',
      activeIcon: Icon(PhosphorIconsFill.bookOpen, color: Colors.blue),
    ),
    BottomNavigationBarItem(
      icon: Icon(PhosphorIcons.bookmarkSimple()),
      label: 'Favourite',
      activeIcon: Icon(PhosphorIconsFill.bookmarkSimple, color: Colors.blue),
    ),
    BottomNavigationBarItem(
      icon: Icon(PhosphorIcons.user()),
      label: 'Profile',
      activeIcon: Icon(PhosphorIconsFill.user, color: Colors.blue),
    ),
  ];

  void toggleIndex(int index) {
    emit(state.copyWith(currentIndex: index));
  }

  Widget changePage() {
    switch (state.currentIndex) {
      case 0:
        return CoursesView();
      case 1:
        return Container();
      case 2:
        return ProfileView();
      default:
        return Container();
    }
  }
}

import 'package:go_router/go_router.dart';
import 'package:lms_educational/features/course_details/presentation/views/course_details_view.dart';
import 'package:lms_educational/features/main/presentation/views/main_view.dart';

class AppRouter {
  static const mainPage = '/';
  static const courseDetailsPage = '/course_details';

  static final router = GoRouter(
    initialLocation: mainPage,
    routes: [
      GoRoute(path: mainPage, builder: (context, state) => MainView()),
      GoRoute(
        path: courseDetailsPage,
        builder: (context, state) {
          final id = state.extra as String;
          return CourseDetailsView(id: id);
        },
      ),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms_educational/core/constants/app_router.dart';
import 'package:lms_educational/core/cubits/course_cubit.dart';
import 'package:lms_educational/core/services/get_it_service.dart';
import 'package:lms_educational/features/course_details/presentation/controllers/course_details_cubit.dart';
import 'package:lms_educational/features/courses/domain/repos/course_repo.dart';
import 'package:lms_educational/features/main/presentation/controllers/main_view_cubit.dart';

void main() {
  setup();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => MainViewCubit()),
        BlocProvider(create: (_) => CourseCubit(getIt.get<CourseRepo>())),
        BlocProvider(create: (_) => CourseDetailsCubit()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms_educational/features/main/presentation/controllers/main_view_cubit.dart';

import '../../../../core/constants/app_text_styles.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    final mainCubit = context.read<MainViewCubit>();

    return BlocBuilder<MainViewCubit, MainViewState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: AppTextStyles.label,
            showSelectedLabels: true,
            selectedItemColor: Colors.blue,
            items: mainCubit.items,
            selectedFontSize: 14.0,
            unselectedFontSize: 14.0,
            elevation: 0.0,
            currentIndex: state.currentIndex,
            onTap: (index) => mainCubit.toggleIndex(index),
          ),
          body: mainCubit.changePage(),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/utils/app_colors.dart';
import 'package:store_app/core/utils/app_styles.dart';
import 'package:store_app/feature/layout/presentation/cubits/bottom_navigation_cubit/bottom_navigation_cubit.dart';
import 'package:store_app/feature/layout/presentation/cubits/bottom_navigation_cubit/bottom_navigation_state.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
      builder: (context, state) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            BottomNavigationCubit.get(context)
                .appBarTitles[BottomNavigationCubit.get(context).currentIndex],
            style: AppStyles.textStyle25.copyWith(
              color: AppColors.deepOrange,
            ),
          ),
        ),
        body: BottomNavigationCubit.get(context)
            .bodyScreens[BottomNavigationCubit.get(context).currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            BottomNavigationCubit.get(context).changeBottomNavigation(index);
          },
          selectedItemColor: AppColors.deepOrange,
          unselectedItemColor: AppColors.grey,
          backgroundColor: AppColors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: BottomNavigationCubit.get(context).currentIndex,
          items: BottomNavigationCubit.get(context).bottomNavigationBarItems,
        ),
      ),
    );
  }
}

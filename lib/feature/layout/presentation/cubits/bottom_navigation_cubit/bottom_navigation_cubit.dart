import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:store_app/config/icons/icons_broken.dart';
import 'package:store_app/feature/account/presentation/views/profile_view.dart';
import 'package:store_app/feature/cart/presentation/views/cart_view.dart';
import 'package:store_app/feature/layout/presentation/cubits/bottom_navigation_cubit/bottom_navigation_state.dart';
import 'package:store_app/feature/layout/presentation/views/categories_view.dart';
import 'package:store_app/feature/layout/presentation/views/home_view.dart';

class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit() : super(BottomNavigationInitialState());

  static BottomNavigationCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  void changeBottomNavigation(int index) {
    currentIndex = index;
    emit(ChangeBottomNavigationState());
  }

  List<String> appBarTitles = const [
    'Store',
    'Categories',
    'Cart',
    'Profile',
  ];

  List<Widget> bodyScreens = const [
    HomeView(),
    CategoriesView(),
    CartView(),
    ProfileView(),
  ];

  List<BottomNavigationBarItem> bottomNavigationBarItems = const [
    BottomNavigationBarItem(
      icon: Icon(
        IconBroken.Home,
      ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        IconBroken.Category,
      ),
      label: 'Categories',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        IconBroken.Buy,
      ),
      label: 'Cart',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        IconBroken.Profile,
      ),
      label: 'Profile',
    ),
  ];
}

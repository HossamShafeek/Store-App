import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/utils/app_strings.dart';
import 'package:store_app/feature/account/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:store_app/feature/account/presentation/cubits/register_cubit/register_cubit.dart';
import 'package:store_app/feature/account/presentation/views/login_view.dart';
import 'package:store_app/feature/account/presentation/views/register_view.dart';
import 'package:store_app/feature/layout/presentation/cubits/bottom_navigation_cubit/bottom_navigation_cubit.dart';
import 'package:store_app/feature/layout/presentation/views/layout_view.dart';
import 'package:store_app/feature/splash/presentation/views/splash_view.dart';

class Routes {
  static const String splashView = '/';
  static const String loginView = '/login_view';
  static const String registerView = '/register_view';
  static const String layout = '/layout_view';
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashView:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case Routes.loginView:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LoginCubit(),
            child: const LoginView(),
          ),
        );
      case Routes.registerView:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => RegisterCubit(),
            child: const RegisterView(),
          ),
        );
      case Routes.layout:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => BottomNavigationCubit(),
            child: const LayoutView(),
          ),
        );
    }
    return undefinedRoute();
  }

  static Route undefinedRoute() {
    return MaterialPageRoute(
      builder: ((context) => const Scaffold(
            body: Center(
              child: Text(AppStrings.noRouteFound),
            ),
          )),
    );
  }
}

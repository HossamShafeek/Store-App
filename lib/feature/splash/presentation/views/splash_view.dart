import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store_app/config/routes/app_routes.dart';
import 'package:store_app/core/utils/app_constants.dart';
import 'package:store_app/feature/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    navigateToOnBoardingView();
    super.initState();
  }

  void navigateToOnBoardingView() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      return Navigator.pushReplacementNamed(context, Routes.loginView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: AppConstants.systemUiOverlayStyle,
        child: SplashViewBody(),
      ),
    );
  }
}

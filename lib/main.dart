import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/config/routes/app_routes.dart';
import 'package:store_app/config/themes/app_theme.dart';
import 'package:store_app/core/utils/service_locator.dart';

void main() {
  setupServiceLocator();
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          title: 'My App',
          theme: appTheme(),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRoutes.generateRoute,
        );
      },
    );
  }
}

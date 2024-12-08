import 'package:advanced_app/config/routeing/app_router.dart';
import 'package:advanced_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/routeing/routes.dart';
import 'core/utils/constants/shared_pref_keys.dart';
import 'main_development.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;

  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "doc app",
        theme: ThemeData(
            primaryColor: AppColors.primaryBlue,
            scaffoldBackgroundColor: Colors.white),
        initialRoute:isLoggedInUser?
        Routes.homeScreen:Routes.loginScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}

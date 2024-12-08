import 'package:advanced_app/config/routeing/routes.dart';
import 'package:advanced_app/core/di/dependency_injection.dart';
import 'package:advanced_app/features/auth/login/logic/cubit.dart';
import 'package:advanced_app/features/auth/register/logic/cubit.dart';
import 'package:advanced_app/features/auth/register/presentation/screens/register_screen.dart';
import 'package:advanced_app/features/home/home/logic/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/auth/login/presentation/screens/login_screen.dart';
import '../../features/home/home/presentation/screens/home_screen.dart';
import '../../features/on_boarding/presentation/on_boarding_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings setting) {
    // final arguments=setting.arguments as OnBoardingScreen;
    switch (setting.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());

      ///loginScreen
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
              create: (context) => getIt<LoginViewModel>(),
              child: const LoginScreen()),
        );

      ///registerScreen
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
              create: (context) => getIt<RegisterViewModel>(),
              child: const RegisterScreen()),
        );

      ///homeScreen
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeScreenViewModel(getIt())..getHomeDate(),
            child: const HomeScreen(),
          ),
        );
      default:
        return null;
    }
  }
}

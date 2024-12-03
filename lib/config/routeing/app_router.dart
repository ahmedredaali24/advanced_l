import 'package:advanced_app/config/routeing/routes.dart';
import 'package:flutter/material.dart';

import '../../features/auth/login/presentation/screens/login_screen.dart';
import '../../features/on_boarding/presentation/screens/on_boarding_screen.dart';

class AppRouter {

  Route generateRoute(RouteSettings setting) {
    // final arguments=setting.arguments as OnBoardingScreen;
    switch (setting.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text("No route for ${setting.name}"),
                  ),
                ));
    }
  }
}

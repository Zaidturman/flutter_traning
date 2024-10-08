import 'package:flutter/material.dart';
import 'package:traning_project/core/routing/routes.dart';
import 'package:traning_project/features/onboarding/onboarding_screen.dart';

import '../../features/login/ui/login_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings){
    // this argument to be passed in any screen like this ( arguments as ClassName )
    final argument = settings.arguments;
    switch(settings.name){
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_)=> const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_)=> const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_)=> Scaffold(
            body: Center(
              child: Text("No route defukt for ${settings.name}"),
          ),
        )
      );
    }
  }
}
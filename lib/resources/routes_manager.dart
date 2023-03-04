import 'package:finest/screens/continue_screen.dart';
import 'package:finest/screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = '/splash';
  static const String continueRoute = '/continue';
  static const String goalScreen = '/goal';
  static const String otpScreen = '/otp';
  static const String registerScreen = '/register';
  static const String informationOne = '/one';
}

class RoutesGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.continueRoute:
        return MaterialPageRoute(builder: (_) => ContinueScreen());
      default:
        return undefinedPage();
    }
  }
}

Route<dynamic> undefinedPage() {
  return MaterialPageRoute(
      builder: (_) => Scaffold(
            body: Container(
              child: const Text('Wrong!!'),
              color: Colors.black,
            ),
          ));
}

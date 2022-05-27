import 'stringes_manager.dart';
import '../view/login/login_view.dart';
import '../view/splash/splash_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = '/';
  static const String logingRoute = '/login';
}

class RouteGaenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.logingRoute:
        return MaterialPageRoute(builder: (_) => const LogInView());
      default:
        return unDefindRoute();
    }
  }

  static Route<dynamic> unDefindRoute() {
    return MaterialPageRoute(
        builder: (_) => const Scaffold(
              body: Center(
                child: Text(StringManager.pageError),
              ),
            ));
  }
}

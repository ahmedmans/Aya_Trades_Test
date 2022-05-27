import 'package:flutter/material.dart';

import '../presentation/resources/routes_manager.dart';
import '../presentation/resources/theme_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp._internel();

  static const MyApp _instance =
      MyApp._internel(); //Singlton || Single instance

  factory MyApp() => _instance;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGaenerator.getRoute,
      initialRoute: Routes.splashRoute,
      debugShowCheckedModeBanner: false,
      title: 'Aya Trades Test',
      theme: getAppTheme(),
    );
  }
}

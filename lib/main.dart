import 'package:finest/resources/color_manager.dart';
import 'package:finest/resources/routes_manager.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.splashRoute,
      onGenerateRoute: RoutesGenerator.getRoute,
      theme: ThemeData(
        backgroundColor: ColorsManager.whiteColor,
        primaryColor: ColorsManager.startLinearColor,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_navigation/src/navigation/path_routes.dart';
import 'package:flutter_navigation/src/views/home_screen.dart';
import 'package:flutter_navigation/src/views/initialization_screen.dart';
import 'package:flutter_navigation/src/views/second_screen.dart';
import 'package:flutter_navigation/src/views/third_screen.dart';

class AppRouter {
  static RouteFactory get generatedRoutes => (RouteSettings settings) {
    late Widget Function(BuildContext) builder;

    /// Standardized arguments as map. Key must be always a descriptive
    /// String and the value can be anything the page is expecting
    var argumentsMap = settings.arguments as Map<String, dynamic>?;

    switch (settings.name) {
      case PathRoutes.home:
        builder = (_) => HomeScreen();
        break;
      case PathRoutes.initial:
        builder = (_) => InitializationScreen();
        break;
      case PathRoutes.secondPage:
        builder = (_) => SecondScreen(title: argumentsMap!['title']);
        break;
      case PathRoutes.thirdPage:
        builder = (_) => ThirdScreen(title: argumentsMap!['title']);
        break;
    }

    return MaterialPageRoute(
      builder: builder,
      settings: RouteSettings(name: settings.name),
    );
  };
}

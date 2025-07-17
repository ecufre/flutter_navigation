import 'package:flutter/material.dart';
import 'package:flutter_navigation/src/navigation/app_router.dart';
import 'package:flutter_navigation/src/navigation/path_routes.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: PathRoutes.initial,
      navigatorKey: _navigatorKey,
      onGenerateRoute: AppRouter.generatedRoutes,
      title: 'Flutter Navigation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_navigation/src/navigation/path_routes.dart';

class InitializationScreen extends StatefulWidget {
  const InitializationScreen({super.key});

  @override
  State<InitializationScreen> createState() => _InitializationScreenState();
}

class _InitializationScreenState extends State<InitializationScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushNamedAndRemoveUntil(
        PathRoutes.home,
        (route) => !Navigator.of(context).canPop(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Initialization Screen')),
      body: Center(child: CircularProgressIndicator.adaptive()),
    );
  }
}

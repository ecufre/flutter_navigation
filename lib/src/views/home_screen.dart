import 'package:flutter/material.dart';
import 'package:flutter_navigation/src/navigation/path_routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  PathRoutes.secondPage,
                  arguments: {'title': 'Second Screen'},
                );
              },
              child: Text('Second Screen'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  PathRoutes.thirdPage,
                  arguments: {'title': 'Second Screen'},
                );
              },
              child: Text('Third Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

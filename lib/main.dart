import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_navigation/src/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );

  runApp(const MyApp());
}

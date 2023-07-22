import 'package:flutter/material.dart';
import 'package:restaurants_app/screens/main_screen.dart';
import 'package:restaurants_app/util/const.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      // theme: Constants.lightTheme,
      // darkTheme: Constants.darkTheme,
      home: const MainScreen(),
    );
  }
}

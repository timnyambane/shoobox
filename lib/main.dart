import 'package:flutter/material.dart';
import 'package:shoobox/screens/home.dart';
import 'package:shoobox/utils/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final Brightness deviceBrightness =
        MediaQuery.of(context).platformBrightness;
    final ThemeData themeData =
        deviceBrightness == Brightness.dark ? darkThemeData : lightThemeData;

    return MaterialApp(
        theme: themeData,
        debugShowCheckedModeBanner: false,
        home: const HomeScreen());
  }
}

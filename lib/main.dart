import 'package:dajeej/views/splash_screen/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'core/utils/app_strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      home:  SplashScreen(),
    );
  }
}


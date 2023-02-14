import 'dart:async';
import 'package:dajeej/core/utils/navigator.dart';
import 'package:dajeej/views/splash_screen/widgets/splash_body.dart';
import 'package:flutter/material.dart';
import '../../initial/screens/init_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5),
            ()=>AppNavigator.push(
                context: context,
                screen: InitScreen(),
            ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return const SplashBody();
  }
}

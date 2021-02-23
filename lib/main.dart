import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'modules/Language.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        splash: Image.asset(
          'assets/logo.jpeg',
          fit: BoxFit.cover,
        ),
        nextScreen: Main(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.white,
        duration: 2000,
      ),
    );
  }
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'navigator',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Language(),
    );
  }
}

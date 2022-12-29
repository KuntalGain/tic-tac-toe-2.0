import 'package:flutter/material.dart';
// import 'package:my_app/screens/game.dart';
import 'package:my_app/screens/home_page.dart';
import 'package:my_app/screens/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // for splash screen
      home: SplashScreen(),

      // for homepage screen
      // home: HomePage(),
      // home: GamePad(
      //   player1: 'A',
      //   player2: 'B',
      // // ),
    );
  }
}

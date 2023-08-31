import 'package:flutter/material.dart';
import 'package:newapp/pages/bonus_page.dart';
import 'package:newapp/pages/get_started.dart';
import 'package:newapp/pages/home_page.dart';
import 'package:newapp/pages/sign_up.dart';

import 'pages/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStarted(),
        '/sign-up': (context) => SignUp(),
        '/bonus-page': (context) => BonusPage(),
        '/home-page': (context) => HomePage()
      },
      // home: SplashPage(),
    );
  }
}

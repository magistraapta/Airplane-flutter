import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newapp/cubit/page_cubit.dart';
import 'package:newapp/pages/bonus_page.dart';
import 'package:newapp/pages/get_started.dart';
import 'package:newapp/pages/home_page.dart';
import 'package:newapp/pages/main_page.dart';
import 'package:newapp/pages/sign_up.dart';

import 'pages/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => PageCubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStarted(),
          '/sign-up': (context) => SignUp(),
          '/bonus-page': (context) => BonusPage(),
          '/home-page': (context) => HomePage(),
          '/main-page': (context) => MainPage()
        },
        // home: SplashPage(),
      ),
    );
  }
}

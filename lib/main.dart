import 'package:flutter/material.dart';
import 'package:news_app_2110020069/pages/menu.dart';
import 'package:news_app_2110020069/pages/splashscreen_view.dart';
import 'package:news_app_2110020069/pages/otomotive_page.dart';
import 'package:news_app_2110020069/pages/sports_page.dart';
import 'package:news_app_2110020069/pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '2110020069',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreenPage(),
        '/menu': (context) => Heading(),
        '/profile': (context) => Profile(),
        '/profile2': (context) => OtomotivePage(),
        '/page3': (context) => SportsPage(),
      },
    );
  }
}

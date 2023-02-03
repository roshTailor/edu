import 'package:education/screens/homePage.dart';
import 'package:education/screens/site.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            fontFamily: "RobotoSlab",
          ),
        ),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontFamily: "RobotoSlab",
            fontSize: 24,
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'site': (context) => const Site(),
      },
    ),
  );
}

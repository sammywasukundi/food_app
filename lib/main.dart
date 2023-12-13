import 'package:flutter/material.dart';
import 'package:food_app_v1/config/config.dart';
import 'package:food_app_v1/sreens/home.dart';
import 'package:food_app_v1/sreens/spashscreen.dart';
import 'package:food_app_v1/sreens/welcome.dart';
import 'package:food_app_v1/widgets/spash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Quicksand',
        primaryColor: Config.colors.primaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF8C00)),
        useMaterial3: true,
      ),
      home: Splash(
        child: SplashSceen(),
          nextPage: Welcome(),
          time: 5,
        ),
    );
  }
}


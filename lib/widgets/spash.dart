import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_app_v1/config/functions.dart';

class Splash extends StatelessWidget {

  final int time;
  final Widget child, nextPage;


  const Splash({super.key, this.time = 3, required this.child, required this.nextPage});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: time), () {
      route(context, nextPage, close: true);
    });
    return child;
  }
}
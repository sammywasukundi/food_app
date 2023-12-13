import 'package:flutter/material.dart';
import 'package:food_app_v1/config/config.dart';

class SplashSceen extends StatefulWidget {
  const SplashSceen({super.key});

  @override
  State<SplashSceen> createState() => _SplashSceenState();
}

class _SplashSceenState extends State<SplashSceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Config.assets.splash_image,
              height: 360,
              width: 360,
              ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 152, 40),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                  
              ),
              height: 40,
              width: 185,
              alignment: Alignment.center,
              child: Text(
                'Fruits hub',
                style: TextStyle(
                    color: Colors.white, 
                    fontFamily: 'IndieFlower',
                    fontSize: 25,
                  ),
                ),
            )
          ],
        ),
      ),
    );
  }
}
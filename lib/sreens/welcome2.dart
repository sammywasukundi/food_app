import 'package:flutter/material.dart';
import 'package:food_app_v1/config/config.dart';
import 'package:food_app_v1/config/functions.dart';
import 'package:food_app_v1/widgets/button.dart';
import 'package:food_app_v1/sreens/welcome.dart';

class Welcome2 extends StatelessWidget {
  const Welcome2({super.key});
  
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: height(context) / 1.7,
              
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 152, 40),
                image: DecorationImage(
                  image: AssetImage(
                    Config.assets.welcome2_image,
                  ),
                )
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'What is your firstname ?',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'There is an age when noise pleases more than music, and the acidity of green fruit more than the flavor of ripe fruit.',
                    style: TextStyle(
                      height: 1.5,
                      fontSize: 16,
                      color: Colors.black26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 65,
                  ),
                  CButton(
                    title: "Let's continue",
                    titleColor: Color.fromARGB(255, 255, 255, 255),
                    borderColor: Color.fromARGB(0, 237, 154, 53),
                    color: const Color.fromARGB(255, 233, 152, 40),
                    border: 'true',
                    radius: 10.0,
                    height: 20.0,
                    onPressed: () {
                      route(context, Welcome());
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
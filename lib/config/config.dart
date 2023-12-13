import 'package:flutter/material.dart';
  
class Config{
  static final colors = _Color();
  static final assets = _Asset();
}

class _Color {
  final primaryColor = Color(0xFF8C00);
  final primaryTextColor = Color(0x1B1B1B);
  final accentTextColor = Color(0x696969);
  final greenColor = Color(0x29AB87);
  final backgroundTextField = Color(0xFFF3F1F1);
  final hintColor = Color(0xFFC2BDBD);

}

class _Asset {
  final splash_image = 'assets/images/splash.png';
  final welcome_image = 'assets/images/Fruit1.png';
  final welcome2_image = 'assets/images/fruit2.png';
}
import 'package:flutter/material.dart';
import 'package:food_app_v1/config/config.dart';

class CTextField extends StatelessWidget {

  final Color backgroundColor;
  final String hint;
  final double radius; 

  const CTextField({super.key, required this.backgroundColor, required this.hint, this.radius = 15});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: backgroundColor?? Config.colors.backgroundTextField, 
        hintText: hint,
        hintStyle: TextStyle(
          color: Config.colors.hintColor,
          fontSize: 20,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(radius),
        )
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:food_app_v1/config/config.dart';

class CButton extends StatelessWidget {
  
  final String title;
  final Color titleColor, borderColor, color;
  final double radius, height;
  final String border;
  final Function onPressed;
  
  const CButton({super.key, required this.title, required this.titleColor, required this.borderColor, required this.color, this.radius = 15, this.height = 15, this.border = 'false', required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed(), 
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color : titleColor ?? Colors.white,
          ),
        ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          side: border == true ? BorderSide(
            color: borderColor??Color.fromARGB(255, 233, 152, 40),
            width: 2
          ): BorderSide.none,
          borderRadius: BorderRadius.circular(radius),
        )),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: height, horizontal: 22)),
        backgroundColor: MaterialStateProperty.all<Color>(color?? Color.fromARGB(255, 233, 152, 40)),
      ),
    );
  }
}
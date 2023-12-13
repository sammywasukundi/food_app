import 'package:flutter/material.dart';
import 'package:food_app_v1/widgets/button.dart';
import 'package:food_app_v1/widgets/textfield.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  
  dynamic get onPressedFunction => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home'),
            CButton(
              title: 'Mon bouton',
              titleColor: Color.fromARGB(255, 255, 255, 255),
              borderColor: Color.fromARGB(0, 237, 154, 53),
              color: const Color.fromARGB(255, 233, 152, 40),
              border: 'true',
              radius: 10.0,
              height: 20.0,
              onPressed: onPressedFunction != null
                ? () {
                    onPressedFunction();
                  }
                : () {
                    // Fonction de repli ou action par défaut si onPressedFunction est null
                    print('Aucune action spécifique définie pour le moment');
                  },
              ),
              CTextField(
                hint: 'SamBro',
                backgroundColor: Color.fromARGB(253, 230, 236, 235),
              ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class CentroEntrada extends StatelessWidget {
  const CentroEntrada({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            'assets/images/cocinar_a.jpg',
            height: 143,
            width: 200,
          ),
        ),
      ]
    );
  }
}
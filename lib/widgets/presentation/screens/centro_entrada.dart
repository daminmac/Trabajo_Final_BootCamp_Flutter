import 'package:flutter/material.dart';

class CentroEntrada extends StatelessWidget {
  final int numPantalla;
  const CentroEntrada({super.key, required this.numPantalla});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        alignment: _alignment(numPantalla),
        child: Image.asset(
          'assets/images/cocinar_a.jpg',
          height: 100,
          //width: 200,
        ),
      ),
    ]);
  }
}

Alignment _alignment(int num) {
  if (num == 1) {
    return Alignment.bottomRight;
  } else if (num == 2) {
    return Alignment.bottomCenter;
  } else {
    return Alignment.bottomLeft;
  }
}

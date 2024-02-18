import 'package:flutter/material.dart';

import 'package:mis_recetas/presentation/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          EntradaUno(),
          EntradaDos(),
          EntradaTres()
        ],
      ),
    );
  }
}

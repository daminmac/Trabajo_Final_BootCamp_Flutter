import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:mis_recetas/ui_theme/styles/text_style_app.dart';

import 'package:mis_recetas/presentation/widgets/widgets.dart';

class EntradaUno extends StatelessWidget {
  const EntradaUno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          const TituloEntrada(numPantalla: 1),
          Container(
            padding: const EdgeInsets.only(left: 20),
            alignment: Alignment.topLeft,
            //height: double.infinity,
            width: double.infinity,
            child: LocaleText(
              "titulo",
              style: textStyleBase.h236,
            ),
          ),
          const CentroEntrada(numPantalla: 1),
          const PieEntrada(numPantalla: 1),
        ],
      ),
    );
  }
}

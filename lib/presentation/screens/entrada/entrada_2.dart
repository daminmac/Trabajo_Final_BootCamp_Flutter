import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:mis_recetas/ui_theme/styles/text_style_app.dart';

import 'package:mis_recetas/presentation/widgets/widgets.dart';

class EntradaDos extends StatelessWidget {
  const EntradaDos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          const TituloEntrada(numPantalla: 2),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 10,),
            alignment: Alignment.topLeft,
            width: double.infinity,
            child: LocaleText(
              "entrada2_texto",
              style: textStyleBase.h215,
            ),
          ),
          const CentroEntrada(numPantalla: 2),
          const PieEntrada(numPantalla: 2),
        ],
      ),
    );
  }
}

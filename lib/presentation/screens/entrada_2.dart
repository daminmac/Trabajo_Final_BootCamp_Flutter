import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:mis_recetas/ui_theme/styles/text_style_app.dart';

import 'package:mis_recetas/widgets/widgets.dart';

class EntradaDos extends StatelessWidget {
  const EntradaDos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          TituloEntrada(),
          Container(
            padding: const EdgeInsets.only(left: 20),
            alignment: Alignment.topLeft,
            width: double.infinity,
            child: LocaleText(
              "titulo",
              style: textStyleBase.h236,
            ),
          ),
          const CentroEntrada(),
          const PieEntrada(),
        ],
      ),
    );
  }
}

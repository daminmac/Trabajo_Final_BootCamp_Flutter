import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:mis_recetas/ui_theme/styles/text_style_app.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mis_recetas/widgets/widgets.dart';

class EntradaUno extends StatelessWidget {
  const EntradaUno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          TituloEntrada(),
          Container(
            color: Colors.red,
            height: double.infinity,
            width: MediaQuery.of(context).size.width * .5,
            child: LocaleText(
              "titulo",
              style: textStyleBase.h236,
            ),
          ),
          const PieEntrada(),
        ],
      ),
    );
  }
}

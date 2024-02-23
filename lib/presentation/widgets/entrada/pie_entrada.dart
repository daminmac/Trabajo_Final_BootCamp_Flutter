import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mis_recetas/presentation/screens/screens.dart';
import 'package:mis_recetas/ui_theme/styles/text_style_app.dart';

class PieEntrada extends StatelessWidget {
  final int numPantalla;
  const PieEntrada({super.key, required this.numPantalla});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 20.0, top: 50, right: 20),
          alignment: _alignment(numPantalla),
          width: double.infinity,
          height: 300.sp,
          decoration: const BoxDecoration(
            color: Color(0xffEC3FC6),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: _crossAlignment(numPantalla),
            children: [
              if (numPantalla != 1)
                LocaleText(
                  'titulo2',
                  style: textStyleBase.h224,
                ),
              Image.asset(
                'assets/images/carrito-de-supermercado.png',
                width: 100.sp,
                height: 100.sp,
              ),
              if (numPantalla == 1)
                LocaleText(
                  'lista_compra',
                  style: textStyleBase.h115,
                ),
              if (numPantalla == 1)
                LocaleText(
                  'ingredientes',
                  style: textStyleBase.h115,
                ),
              if (numPantalla == 1)
                LocaleText(
                  'categorias',
                  style: textStyleBase.h115,
                ),
              (numPantalla == 1)
                  ? const SizedBox(height: 20)
                  : const SizedBox(height: 60),
              Row(
                mainAxisAlignment: numPantalla != 1
                    ? MainAxisAlignment.spaceBetween
                    : MainAxisAlignment.end,
                children: [
                  if (numPantalla != 1)
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        numPantalla == 2
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EntradaUno()))
                            : Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EntradaDos()));
                      },
                    ),
                  (numPantalla != 3)
                      ? IconButton(
                          icon: const Icon(Icons.arrow_forward),
                          onPressed: () {
                            numPantalla == 1
                                ? Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const EntradaDos()))
                                : Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const EntradaTres()));
                          })
                      : GestureDetector(
                          onTap: () {
                            print('Has pulsado "ENTRAR"');
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => const SignIn()),
                              (route) => false,
                            );
                          },
                          child: LocaleText(
                            'entrar_mayus',
                            style: textStyleBase.h116,
                          )),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Alignment _alignment(int num) {
  if (num == 1) {
    return Alignment.centerLeft;
  } else if (num == 2) {
    return Alignment.center;
  } else {
    return Alignment.centerRight;
  }
}

CrossAxisAlignment _crossAlignment(int num) {
  if (num == 1) {
    return CrossAxisAlignment.start;
  } else if (num == 2) {
    return CrossAxisAlignment.center;
  } else {
    return CrossAxisAlignment.end;
  }
}

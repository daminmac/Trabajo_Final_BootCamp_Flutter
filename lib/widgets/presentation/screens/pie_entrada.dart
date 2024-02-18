import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mis_recetas/ui_theme/styles/text_style_app.dart';

class PieEntrada extends StatelessWidget {
  const PieEntrada({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 20.0, top: 50, right: 20),
          alignment: Alignment.centerLeft,
          width: double.infinity,
          height: 300.sp,
          decoration: const BoxDecoration(
            color:Color(0xffEC3FC6),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/carrito-de-supermercado.png',
                width: 100.sp,
                height: 100.sp,
              ),
              LocaleText(
                'lista_compra',
                style: textStyleBase.h115,
              ),
              LocaleText(
                'ingredientes',
                style: textStyleBase.h115,
              ),
              LocaleText(
                'categorias',
                style: textStyleBase.h115,
              ),
              const SizedBox(height: 50),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //Icon(Icons.arrow_back),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

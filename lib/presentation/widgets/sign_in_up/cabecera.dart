import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mis_recetas/ui_theme/styles/text_style_app.dart';

class Cabecera extends StatelessWidget {
  const Cabecera({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      alignment: Alignment.centerLeft,
      width: double.infinity,
      height: 115.sp,
      decoration: const BoxDecoration(
        color: Color(0xff77EF63),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/images/cocinero.png',
            width: 75.sp,
            height: 75.sp,
          ),
          LocaleText(
            'titulo',
            style: textStyleBase.h122,
          ),
        ],
      ),
    );
  }
}
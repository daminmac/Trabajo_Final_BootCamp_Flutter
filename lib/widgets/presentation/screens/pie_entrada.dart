import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';

class PieEntrada extends StatelessWidget {
  const PieEntrada({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20.0),
      alignment: Alignment.centerLeft,
      width: double.infinity,
      height: 300.sp,
      decoration: const BoxDecoration(
        color:Color(0xffEC3FC6),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
        ),
      ),
      child: Image.asset(
        'assets/images/carrito-de-supermercado.png',
        width: 100.sp,
        height: 100.sp,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';

class TituloEntrada extends StatelessWidget {
  final int numPantalla;
  const TituloEntrada({super.key, required this.numPantalla});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20.0),
      alignment: _alignment(numPantalla),
      width: double.infinity,
      height: 200.sp,
      decoration: const BoxDecoration(
        color: Color(0xff77EF63),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Image.asset(
        'assets/images/cocinero.png',
        width: 150.sp,
        height: 150.sp,
      ),
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

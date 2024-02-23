import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:mis_recetas/presentation/screens/screens.dart';
import 'package:mis_recetas/ui_theme/styles/text_style_app.dart';

class PieSignInUp extends StatelessWidget {
  final bool signInUp;
  const PieSignInUp({super.key, required this.signInUp});

  @override
  Widget build(BuildContext context) {
    String textoUno = '';
    String textoDos = '';
    if (signInUp) {
      textoUno = 'primer_acceso';
      textoDos = 'crea_cuenta';
    } else {
      textoUno = 'tiene_cuenta';
      textoDos = 'iniciar_sesion';
    }
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 225,
      decoration: const BoxDecoration(
        color: Color(0xffEC3FC6),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/carrito-de-supermercado.png',
            width: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LocaleText(
                textoUno,
                style: textStyleBase.h114,
              ),
              GestureDetector(
                onTap: (signInUp)
                  ? () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const SignUp()))
                  : () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const SignIn())),
                child: LocaleText(
                  textoDos,
                  style: textStyleBase.h116,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

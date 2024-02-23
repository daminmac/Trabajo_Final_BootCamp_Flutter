import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:mis_recetas/ui_theme/styles/text_style_app.dart';
import 'package:mis_recetas/presentation/widgets/widgets.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Cabecera(),
            LocaleText(
              'crea_nueva_cuenta',
              style: textStyleBase.h236,
            ),
            const PieSignInUp(signInUp: false),
          ],
        ),
      ),
    );
  }
}
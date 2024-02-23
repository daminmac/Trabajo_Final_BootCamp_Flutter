import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:mis_recetas/ui_theme/styles/text_style_app.dart';
import 'package:mis_recetas/presentation/widgets/widgets.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Cabecera(),
            LocaleText(
              'iniciar_sesion',
              style: textStyleBase.h236,
            ),
            const PieSignInUp(signInUp: true),
          ],
        ),
      ),
    );
  }
}
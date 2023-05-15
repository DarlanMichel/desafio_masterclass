import 'dart:async';
import 'package:desafio_masterclass/app/utilities/assets.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5),
        () => Navigator.pushReplacementNamed(context, '/home'));

    return Scaffold(
      body: Center(
        child: Image.asset(
          Assets.masterclassLogo,
          height: 75,
          width: 287,
        ),
      ),
    );
  }
}

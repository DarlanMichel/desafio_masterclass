import 'package:desafio_masterclass/app/utilities/assets.dart';
import 'package:desafio_masterclass/app/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class Mockup1Page extends StatelessWidget {
  const Mockup1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Bank,',
        toBack: () => Navigator.pop(context),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Column(
            children: [
              const SizedBox(height: 120),
              SizedBox(
                height: 100,
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xff5b5be0),
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                            ),
                            color: Color(0xff5b5be0),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 100,
                      width: 45,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                        color: Color(0xff5b5be0),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'Get your Money\nUnder Control',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                'Manage your expenses.\nSeamlessly.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 80),
              Container(
                height: 48,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: const Color(0xff5b5be0),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    'Sign Up with Email ID',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 48,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Assets.google,
                      height: 20,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Sign Up with Google',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 48),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        )),
                    TextSpan(
                        text: 'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

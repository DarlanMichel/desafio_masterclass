import 'package:desafio_masterclass/app/utilities/assets.dart';
import 'package:desafio_masterclass/app/widgets/app_bar_widget.dart';
import 'package:desafio_masterclass/app/widgets/bottom_navigate/bottom_navigate_bar_widget.dart';
import 'package:desafio_masterclass/app/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      bottomNavigationBar: const BottomNavigateBarWidget(),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 14,
          right: 14,
          top: 20,
        ),
        child: ListView(
          children: const [
            CardWidget(
              icon: FontAwesomeIcons.personRunning,
              title: 'Animações',
              description: 'Estudos sobre animações implícitas e controladas, '
                  'contendo 4 exercícios e 2 estudos',
            ),
            CardWidget(
              icon: FontAwesomeIcons.glasses,
              title: 'Leitura de Mockup',
              description: 'Aplicação da técnica de leitura de mockup, '
                  'contendo 2 exercícios',
            ),
            CardWidget(
              svg: Assets.iconToys,
              title: 'Playground',
              description: 'Ambiente destinado a testes e estudos em geral',
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:desafio_masterclass/app/utilities/assets.dart';
import 'package:desafio_masterclass/app/widgets/app_bar_widget.dart';
import 'package:desafio_masterclass/app/widgets/bottom_navigate/bottom_navigate_bar_widget.dart';
import 'package:desafio_masterclass/app/home/components/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Atividades',
      ),
      bottomNavigationBar: const BottomNavigateBarWidget(
        indexSelected: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 14,
          right: 14,
          top: 20,
        ),
        child: ListView(
          children: [
            CardWidget(
              icon: FontAwesomeIcons.personRunning,
              quantity: 4,
              title: 'Animações',
              description: 'Estudos sobre animações implícitas e controladas, '
                  'contendo 4 exercícios e 2 estudos',
              seeMore: () => Navigator.pushNamed(context, '/animations'),
            ),
            CardWidget(
              icon: FontAwesomeIcons.glasses,
              quantity: 2,
              title: 'Leitura de Mockup',
              description: 'Aplicação da técnica de leitura de mockup, '
                  'contendo 2 exercícios',
              seeMore: () {},
            ),
            CardWidget(
              svg: Assets.iconToys,
              quantity: 3,
              title: 'Playground',
              description: 'Ambiente destinado a testes e estudos em geral',
              seeMore: () {},
            ),
          ],
        ),
      ),
    );
  }
}

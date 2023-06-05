import 'package:desafio_masterclass/app/modules/home/pages/animations/components/animations_tile.dart';
import 'package:desafio_masterclass/app/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class AnimationsPage extends StatelessWidget {
  const AnimationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Animações,',
        toBack: () => Navigator.pop(context),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 14,
          right: 14,
          top: 20,
        ),
        child: Column(
          children: [
            AnimationsTile(
              index: 1,
              onTap: () => Navigator.pushNamed(context, '/animation/1'),
              title: 'Botão Flutuante',
            ),
            AnimationsTile(
              index: 2,
              onTap: () => Navigator.pushNamed(context, '/animation/2'),
              title: 'My Expansion Tile',
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:desafio_masterclass/app/animations/components/animations_tile.dart';
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
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, i) {
            return AnimationsTile(index: i);
          },
        ),
      ),
    );
  }
}

import 'package:desafio_masterclass/app/modules/home/pages/animations/pages/components/animation_tile.dart';
import 'package:desafio_masterclass/app/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class Animation2Page extends StatefulWidget {
  const Animation2Page({super.key});

  @override
  State<Animation2Page> createState() => _Animation2PageState();
}

class _Animation2PageState extends State<Animation2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'My Expansion Tile,',
        toBack: () => Navigator.pop(context),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 50,
        itemBuilder: (context, i) {
          return AnimationTile(
            index: i,
          );
        },
      ),
    );
  }
}

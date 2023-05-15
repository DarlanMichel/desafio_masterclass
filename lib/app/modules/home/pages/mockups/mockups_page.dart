import 'package:desafio_masterclass/app/modules/home/pages/mockups/components/mockups_tile.dart';
import 'package:desafio_masterclass/app/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class MockupsPage extends StatelessWidget {
  const MockupsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Mockups,',
        toBack: () => Navigator.pop(context),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 14,
          right: 14,
          top: 20,
        ),
        child: ListView(
          children: [
            MockupsTile(
              index: 1,
              title: 'Bank',
              onTap: () => Navigator.pushNamed(context, '/mockups/1'),
            ),
            MockupsTile(
              index: 2,
              title: 'Tinder',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

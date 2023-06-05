import 'package:desafio_masterclass/app/modules/about/components/about_card_widget.dart';
import 'package:desafio_masterclass/app/modules/about/components/about_favorite_card_widget.dart';
import 'package:desafio_masterclass/app/modules/about/components/about_habilities_card_widget.dart';
import 'package:desafio_masterclass/app/utilities/assets.dart';
import 'package:desafio_masterclass/app/widgets/app_bar_widget.dart';
import 'package:desafio_masterclass/app/widgets/bottom_navigate/bottom_navigate_bar_widget.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Sobre o dev',
      ),
      bottomNavigationBar: const BottomNavigateBarWidget(
        indexSelected: 2,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 14,
            right: 14,
            top: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AboutCardWidget(),
              const SizedBox(height: 20),
              Text(
                'Tecnologias Favoritas',
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(fontSize: 14),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    AboutFavoriteCardWidget(
                      svg: Assets.flutter,
                      label: 'Flutter',
                    ),
                    AboutFavoriteCardWidget(
                      svg: Assets.dart,
                      label: 'Dart',
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Habilidades e Competências',
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(fontSize: 14),
              ),
              const SizedBox(height: 8),
              const AboutHabilitiesCardWidget(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

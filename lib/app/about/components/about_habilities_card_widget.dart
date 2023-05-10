import 'package:desafio_masterclass/app/about/components/about_habilities_tile_widget.dart';
import 'package:flutter/material.dart';

class AboutHabilitiesCardWidget extends StatelessWidget {
  const AboutHabilitiesCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 182,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: Theme.of(context).cardColor,
      ),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          AboutHabilitiesTileWidget(label: 'Dart/Flutter', percentagem: 0.9),
          SizedBox(height: 15),
          AboutHabilitiesTileWidget(label: 'Node.JS', percentagem: 0.7),
          SizedBox(height: 15),
          AboutHabilitiesTileWidget(label: 'Delphi', percentagem: 0.5),
          SizedBox(height: 15),
          AboutHabilitiesTileWidget(label: 'Firebase', percentagem: 0.7),
          SizedBox(height: 15),
          AboutHabilitiesTileWidget(label: 'Git', percentagem: 0.8),
        ],
      ),
    );
  }
}

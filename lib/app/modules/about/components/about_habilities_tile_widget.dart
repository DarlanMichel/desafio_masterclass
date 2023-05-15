import 'package:flutter/material.dart';

class AboutHabilitiesTileWidget extends StatelessWidget {
  final String label;
  final double percentagem;
  const AboutHabilitiesTileWidget({super.key, required this.label, required this.percentagem});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(color: Theme.of(context).hintColor),
        ),
        const Expanded(child: SizedBox()),
        Stack(
                  children: [
                    Container(
                      width: 255,
                      height: 9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                    ),
                    Container(
                      width: (255 * percentagem),
                      height: 9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                )
      ],
    );
  }
}

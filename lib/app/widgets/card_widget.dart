import 'package:desafio_masterclass/app/app.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  const CardWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    final themeState = context.findAncestorStateOfType<AppState>();

    final isDark = themeState?.themeMode == ThemeMode.dark;

    return Container(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 21.5,
        left: 12,
        right: 11,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: Theme.of(context).cardColor),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                radius: 21.5,
                child: Icon(
                  icon,
                  color: isDark
                      ? Theme.of(context).scaffoldBackgroundColor
                      : Theme.of(context).cardColor,
                ),
              ),
              const SizedBox(width: 13),
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Exercicios: ',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Theme.of(context).hintColor),
                    ),
                    TextSpan(
                      text: '3',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 37),
          SizedBox(
            height: 41,
            child: Text(
              description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          const SizedBox(height: 33),
          Row(
            children: [
              Icon(
                FontAwesomeIcons.github,
                size: 20,
                color: Theme.of(context).highlightColor,
              ),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  'Acessar código fonte',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              Container(
                height: 34.5,
                width: 119,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(23),
                ),
                child: Center(
                  child: Text(
                    'Ver mais',
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(color: const Color(0xFFEDF4F8)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

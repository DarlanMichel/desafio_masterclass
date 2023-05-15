import 'package:desafio_masterclass/app/utilities/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutCardWidget extends StatelessWidget {
  const AboutCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 320,
      padding: const EdgeInsets.only(top: 8, bottom: 26),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: Theme.of(context).cardColor,
      ),
      child: Column(
        children: [
          Container(
            height: 116,
            width: 116,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(58),
              border: Border.all(
                color: Theme.of(context).scaffoldBackgroundColor,
                width: 5,
              ),
              image: const DecorationImage(
                image: AssetImage(
                  Assets.photo,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 13),
          Text(
            'Darlan Michel da Silva',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 13),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Text(
              'Sou um desenvolvedor mobile, focado no Flutter e disposto a'
              ' aprender cada vez mais. Gosto de desafios que me façam'
              ' pensar e resolver problemas, passar um tempo com a familia,'
              ' assistir filmes e de me dedicar a projetos pessoais.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Theme.of(context).hintColor,
                  ),
            ),
          ),
          const Expanded(child: SizedBox()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.whatsapp,
                size: 22.48,
                color: Theme.of(context).highlightColor,
              ),
              const SizedBox(width: 27),
              Icon(
                FontAwesomeIcons.githubAlt,
                size: 22.48,
                color: Theme.of(context).highlightColor,
              ),
              const SizedBox(width: 27),
              Icon(
                FontAwesomeIcons.instagram,
                size: 22.48,
                color: Theme.of(context).highlightColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}

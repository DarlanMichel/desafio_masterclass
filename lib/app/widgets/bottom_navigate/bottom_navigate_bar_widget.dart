import 'package:desafio_masterclass/app/widgets/bottom_navigate/bottom_navigate_item.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigateBarWidget extends StatefulWidget {
  const BottomNavigateBarWidget({super.key});

  @override
  State<BottomNavigateBarWidget> createState() =>
      _BottomNavigateBarWidgetState();
}

class _BottomNavigateBarWidgetState extends State<BottomNavigateBarWidget> {
  int indexSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavigateItem(
            index: 0,
            indexSelected: indexSelected,
            label: 'Atividades',
            icon: FeatherIcons.target,
            onTap: () {
              setState(() {
                indexSelected = 0;
              });
            },
          ),
          Container(
            height: 46,
            width: 1,
            color: Theme.of(context).highlightColor,
          ),
          BottomNavigateItem(
            index: 1,
            indexSelected: indexSelected,
            label: 'Repositórios',
            icon: FontAwesomeIcons.github,
            onTap: () {
              setState(() {
                indexSelected = 1;
              });
            },
          ),
          Container(
            height: 46,
            width: 1,
            color: Theme.of(context).highlightColor,
          ),
          BottomNavigateItem(
            index: 2,
            indexSelected: indexSelected,
            label: 'Sobre o dev',
            icon: Icons.person,
            onTap: () {
              setState(() {
                indexSelected = 2;
              });
            },
          ),
        ],
      ),
    );
  }
}

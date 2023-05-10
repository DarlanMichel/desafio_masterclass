import 'package:desafio_masterclass/app/widgets/bottom_navigate/bottom_navigate_item.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigateBarWidget extends StatefulWidget {
  final int indexSelected;
  const BottomNavigateBarWidget({super.key, required this.indexSelected});

  @override
  State<BottomNavigateBarWidget> createState() =>
      _BottomNavigateBarWidgetState();
}

class _BottomNavigateBarWidgetState extends State<BottomNavigateBarWidget> {
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
            indexSelected: widget.indexSelected,
            label: 'Atividades',
            icon: FeatherIcons.target,
            onTap: () => Navigator.pushNamed(context, '/home'),
          ),
          Container(
            height: 46,
            width: 1,
            color: Theme.of(context).highlightColor,
          ),
          BottomNavigateItem(
            index: 1,
            indexSelected: widget.indexSelected,
            label: 'Repositórios',
            icon: FontAwesomeIcons.github,
            onTap: () => Navigator.pushNamed(context, '/repositories'),
          ),
          Container(
            height: 46,
            width: 1,
            color: Theme.of(context).highlightColor,
          ),
          BottomNavigateItem(
            index: 2,
            indexSelected: widget.indexSelected,
            label: 'Sobre o dev',
            icon: Icons.person,
            onTap: () => Navigator.pushNamed(context, '/about'),
          ),
        ],
      ),
    );
  }
}

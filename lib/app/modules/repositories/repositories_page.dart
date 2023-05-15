import 'package:desafio_masterclass/app/widgets/app_bar_widget.dart';
import 'package:desafio_masterclass/app/widgets/bottom_navigate/bottom_navigate_bar_widget.dart';
import 'package:flutter/material.dart';

class RepositoriesPage extends StatelessWidget {
  const RepositoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(
        title: 'Repositórios',
      ),
      bottomNavigationBar: BottomNavigateBarWidget(
        indexSelected: 1,
      ),
    );
  }
}

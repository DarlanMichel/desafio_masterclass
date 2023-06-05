import 'package:desafio_masterclass/app/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class Animation1Page extends StatefulWidget {
  const Animation1Page({super.key});

  @override
  State<Animation1Page> createState() => _Animation1PageState();
}

class _Animation1PageState extends State<Animation1Page> {
  bool isClicked = false;
  final duration = const Duration(seconds: 2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Botão flutuante,',
        toBack: () => Navigator.pop(context),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: AnimatedAlign(
          duration: duration,
          alignment: isClicked ? Alignment.topCenter : Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: InkWell(
              overlayColor: MaterialStateColor.resolveWith((states) => Colors.transparent),
              onTap: () {
                setState(() {
                  isClicked = !isClicked;
                });
              },
              child: AnimatedContainer(
                duration: duration,
                height: 50,
                width: isClicked ? 100 : 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius:
                      isClicked ? BorderRadius.zero : BorderRadius.circular(25),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

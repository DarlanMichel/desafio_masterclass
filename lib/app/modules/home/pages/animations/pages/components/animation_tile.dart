import 'package:flutter/material.dart';

class AnimationTile extends StatefulWidget {
  final int index;
  const AnimationTile({super.key, required this.index});

  @override
  State<AnimationTile> createState() => _AnimationTileState();
}

class _AnimationTileState extends State<AnimationTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: Column(
        children: [
          InkWell(
            overlayColor:
                MaterialStateColor.resolveWith((states) => Colors.transparent),
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'My Expanded Tile ${widget.index}',
                    style: TextStyle(
                        fontSize: 12, color: Theme.of(context).highlightColor),
                  ),
                ),
                AnimatedRotation(
                  turns: isExpanded ? 0.5 : 0,
                  duration: const Duration(milliseconds: 500),
                  child: Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Theme.of(context).highlightColor,
                  ),
                )
              ],
            ),
          ),
          isExpanded
              ? Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                  style: TextStyle(
                      fontSize: 12, color: Theme.of(context).highlightColor))
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}

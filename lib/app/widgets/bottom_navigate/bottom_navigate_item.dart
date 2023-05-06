import 'package:flutter/material.dart';

class BottomNavigateItem extends StatelessWidget {
  final int index;
  final int indexSelected;
  final String label;
  final IconData icon;
  final Function() onTap;

  const BottomNavigateItem({
    super.key,
    required this.index,
    required this.indexSelected,
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor:
          MaterialStateColor.resolveWith((states) => Colors.transparent),
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 59,
            height: 32,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: indexSelected == index
                    ? Theme.of(context).cardColor
                    : Theme.of(context).scaffoldBackgroundColor),
            child: Center(
              child: Icon(
                icon,
                color: Theme.of(context).highlightColor,
                size: 24,
              ),
            ),
          ),
          const SizedBox(height: 2.71),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}

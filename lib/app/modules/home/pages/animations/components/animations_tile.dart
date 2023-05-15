import 'package:flutter/material.dart';

class AnimationsTile extends StatelessWidget {
  final int index;
  const AnimationsTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 14),
      width: double.infinity,
      height: 64,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: Theme.of(context).cardColor,
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            radius: 16.5,
            child: Text(
              (index + 1).toString(),
              style: Theme.of(context)
                  .textTheme
                  .displayMedium
                  ?.copyWith(color: const Color(0xFFEDF4F8)),
            ),
          ),
          const Expanded(child: SizedBox()),
          Text(
            'Exercícios ${(index + 1).toString().padLeft(2, '0')}',
            style: Theme.of(context).textTheme.displayMedium,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MockupsTile extends StatelessWidget {
  final int index;
  final String title;
  final Function() onTap;
  const MockupsTile(
      {super.key,
      required this.index,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
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
                (index).toString(),
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: const Color(0xFFEDF4F8)),
              ),
            ),
            const Expanded(child: SizedBox()),
            Text(
              title,
              style: Theme.of(context).textTheme.displayMedium,
            )
          ],
        ),
      ),
    );
  }
}

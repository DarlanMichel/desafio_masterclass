import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AboutFavoriteCardWidget extends StatelessWidget {
  final String? svg;
  final IconData? icon;
  final String label;
  const AboutFavoriteCardWidget(
      {super.key, this.icon, required this.label, this.svg});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      height: 100,
      width: 94,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: Theme.of(context).cardColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          (svg ?? '').isNotEmpty
              ? SvgPicture.asset(
                  svg ?? '',
                  height: 48,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).highlightColor,
                    BlendMode.srcIn,
                  ),
                )
              : Icon(
                  icon,
                  size: 48,
                  color: Theme.of(context).highlightColor,
                ),
          const SizedBox(height: 8.6),
          Text(
            label,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ],
      ),
    );
  }
}

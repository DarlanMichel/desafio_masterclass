import 'package:desafio_masterclass/app/app.dart';
import 'package:desafio_masterclass/app/utilities/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(90);
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 14,
        top: 42,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.logo,
            height: 48,
            width: 48,
          ),
          const SizedBox(width: 4),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Atividades',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                'Flutterando Masterclass',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
          InkWell(
            overlayColor:
                MaterialStateColor.resolveWith((states) => Colors.transparent),
            onTap: () {
              final themeState = context.findAncestorStateOfType<AppState>();

              final isDark = themeState?.themeMode == ThemeMode.dark;

              if (isDark) {
                themeState?.changeTheme(ThemeMode.light);
              } else {
                themeState?.changeTheme(ThemeMode.dark);
              }
            },
            child: Icon(
              FontAwesomeIcons.solidMoon,
              size: 24,
              color: Theme.of(context).highlightColor,
            ),
          ),
        ],
      ),
    );
  }
}

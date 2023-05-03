import 'package:desafio_masterclass/app/home/home_screen.dart';
import 'package:desafio_masterclass/app/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  ThemeMode _themeMode = ThemeMode.dark;

  ThemeMode get themeMode => _themeMode;

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desafio Masterclass',
      themeMode: _themeMode,
      theme: ThemeData(
        primaryColor: const Color(0xFF055AA3),
        highlightColor: const Color(0xFF172026),
        hintColor: const Color(0xFF51565A),
        cardColor: const Color(0xFFEDF4F8),
        scaffoldBackgroundColor: const Color(0xFFD6DFE4),
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF172026),
          ),
          displayMedium: TextStyle(
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF172026),
          ),
          displaySmall: TextStyle(
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF172026),
          ),
          bodyLarge: TextStyle(
            fontFamily: GoogleFonts.montserrat().fontFamily,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF51565A),
          ),
          bodySmall: TextStyle(
            fontFamily: GoogleFonts.montserrat().fontFamily,
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF172026),
          ),
        ),
      ),
      darkTheme: ThemeData(
        primaryColor: const Color(0xFF055AA3),
        highlightColor: const Color(0xFFEDF4F8),
        hintColor: const Color(0xFF51565A),
        cardColor: const Color(0xFF172026),
        scaffoldBackgroundColor: const Color(0xFF121517),
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: const Color(0xFFEDF4F8),
          ),
          displayMedium: TextStyle(
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: const Color(0xFFEDF4F8),
          ),
          displaySmall: TextStyle(
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: const Color(0xFFEDF4F8),
          ),
          bodyLarge: TextStyle(
            fontFamily: GoogleFonts.montserrat().fontFamily,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF51565A),
          ),
          bodySmall: TextStyle(
            fontFamily: GoogleFonts.montserrat().fontFamily,
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: const Color(0xFFEDF4F8),
          ),
        ),
      ),
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
      },
      initialRoute: '/',
    );
  }
}
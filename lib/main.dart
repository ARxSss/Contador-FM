import 'package:flutter/material.dart';
import 'package:contador/screens/home_screen.dart';
import 'package:contador/screens/info_screen.dart';

void main() {
  runApp(const MyApp());
}

const Color evaPurple = Color(0xFF6A0DAD);
const Color evaGreen = Color(0xFF00FF00);
const Color evaBackground = Color(0xFF1A1A1A);
const Color evaAppBar = Color(0xFF101010);
const Color evaCard = Color(0xFF2C2C2C);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contador App',
      
      theme: ThemeData.dark().copyWith(
        primaryColor: evaPurple,
        scaffoldBackgroundColor: evaBackground,
        
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: evaGreen,
          foregroundColor: Colors.black,
        ),
        
        appBarTheme: const AppBarTheme(
          backgroundColor: evaAppBar,
          elevation: 2,
        ),
        
        cardTheme: const CardThemeData(
          color: evaCard,
          elevation: 4,
          margin: EdgeInsets.all(16),
        ),

        sliderTheme: SliderThemeData(
          activeTrackColor: evaPurple,
          inactiveTrackColor: Colors.grey[700],
          thumbColor: evaGreen,
          overlayColor: evaGreen.withAlpha(60),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: evaPurple,
            foregroundColor: Colors.white,
          )
        ),

        dialogTheme: DialogThemeData(
          backgroundColor: evaCard,
          titleTextStyle: const TextStyle(color: evaGreen, fontSize: 20),
          contentTextStyle: const TextStyle(color: Colors.white),
        )
      ),

      initialRoute: 'home',
      routes: {
  'home': (BuildContext context) => const HomeScreen(),
  'info': (BuildContext context) => const InfoScreen(),
      },
    );
  }
}
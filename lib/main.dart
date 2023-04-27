import 'package:donut_delivery/presentation/welcome_screen/bloc/donuts_bloc.dart';
import 'package:donut_delivery/theme.dart';
import 'package:donut_delivery/presentation/welcome_screen/welcome_screen.dart';
import 'package:donut_delivery/utils/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const Color _scaffoldColorLight = Color(0xfff5f5f5);

  static const Color _primaryColorLight = Color(0xff5b2263);
  static const Color _buttonColor = Color(0xfff6596e);

  static const Color _secondaryColorLight = Color(0xfff5ded3);

  static const Color _errorColorLight = Color(0xffb00020);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DonutsBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: _primaryColorLight,
          primaryColorDark: _buttonColor,
          primaryColorLight: _primaryColorLight,
          scaffoldBackgroundColor: _scaffoldColorLight,
          disabledColor: Colors.white.withOpacity(0.15),
          colorScheme: const ColorScheme.light().copyWith(
              secondary: _secondaryColorLight,
              error: _errorColorLight,
              primary: _primaryColorLight),
          textTheme: const TextTheme(
            displayLarge: TextStyle(
              fontFamily: 'Outfit',
              fontSize: 32,
              fontWeight: FontWeight.w900,
              letterSpacing: -1.5,
              color: Colors.black,
            ),
            displayMedium: TextStyle(
              fontFamily: 'Outfit',
              fontSize: 28,
              fontWeight: FontWeight.w800,
              letterSpacing: -1.0,
              color: Colors.black,
            ),
            displaySmall: TextStyle(
              fontFamily: 'Outfit',
              fontSize: 24,
              fontWeight: FontWeight.w800,
              letterSpacing: -0.75,
              color: Colors.black,
            ),
            headlineMedium: TextStyle(
              fontFamily: 'Outfit',
              fontSize: 20,
              fontWeight: FontWeight.w800,
              letterSpacing: -0.50,
              color: Colors.black,
            ),
            headlineSmall: TextStyle(
              fontFamily: 'Outfit',
              fontSize: 18,
              fontWeight: FontWeight.w800,
              letterSpacing: -0.5,
              color: Colors.black,
            ),

            titleLarge: TextStyle(
              fontFamily: 'Outfit',
              fontSize: 16,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.25,
              color: Colors.black,
            ),
            titleMedium: TextStyle(
              fontFamily: 'Outfit',
              fontSize: 16,
              letterSpacing: 0.15,
              color: Colors.black,
            ),
            titleSmall: TextStyle(
              fontFamily: 'Outfit',
              fontSize: 14,
              letterSpacing: 0.1,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            bodySmall: TextStyle(
              fontFamily: 'Outfit',
              fontSize: 12,
              color: Colors.black,
            ),
            bodyLarge: TextStyle(
              fontFamily: 'Outfit',
              fontSize: 16,
              letterSpacing: 0.5,
              color: Colors.black,
            ),
            bodyMedium: TextStyle(
              fontFamily: 'Outfit',
              fontSize: 14,
              letterSpacing: 0.25,
              color: Colors.black,
            ),

            //BUTTON
            labelLarge: TextStyle(
              fontFamily: 'Outfit',
              fontSize: 11,
              letterSpacing: 1.25,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return WelcomeScreen();
  }
}

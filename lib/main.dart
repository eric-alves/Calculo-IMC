import 'package:calculo_imc/views/tela_resultado.dart';
import 'package:flutter/material.dart';

import 'views/tela_principal.dart';

void main() {
  runApp(const CalculadoraIMC());
}

class CalculadoraIMC extends StatelessWidget {
  const CalculadoraIMC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          onBackground: Colors.teal,
          background: Colors.teal,
          onPrimary: Colors.white,
          primary: Colors.teal,
          secondary: Colors.teal,
          onSecondary: Colors.white,
          error: Colors.redAccent,
          onError: Colors.redAccent,
          surface: Colors.white,
          onSurface: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            fontSize: 20.0,
            // fontStyle: FontStyle.italic,
          ),
          bodyText2: TextStyle(
            fontSize: 14.0,
            fontFamily: 'Hind',
            color: Colors.black54,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const TelaPrincipal(),
        '/resultado': (context) => const TelaResultado(),
      },
    );
  }
}

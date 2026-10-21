// Samuel Dominguez Lopez
// 20/10/2026
// Matricula: 23030296

import 'package:contador_app/presentation/screens/CounterScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget { // Clase principal de la aplicación
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) { // Se define el widget principal de la aplicación
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Se desactiva el banner de depuración
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green // Se define el color principal de la aplicación
      ),
      home: CounterScreen() // Se define la pantalla principal de la aplicación como CounterScreen
    );
  }
}

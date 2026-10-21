// Samuel Dominguez Lopez
// 20/10/2026
// Matricula: 23030296

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState(); // Se crea el estado del widget CounterScreen
}

class _CounterScreenState extends State<CounterScreen> {
  
  int clickCounter = 0; // Variable para almacenar el valor del contador


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Define contenido de appBar
      appBar: AppBar(
        title:Center(child: const Text("Pantalla del Contador")), // Titulo de la appBar
        actions: [
          IconButton( // Boton para reiniciar el contador
            onPressed: (){
              setState(() {
                clickCounter = 0; // Reinicia el contador a 0
              });
            },
            icon: Icon(Icons.refresh_rounded),
          ),
        ],
        elevation: 0,
      ),
      body: Center(
        child: Column(
          //Propiedad de la columna para centrar el texto de pantalla
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),), // Muestra el valor del contador
            Text(clickCounter == 1 ? "Click" : "Clicks", style: TextStyle(fontSize: 25),), // Muestra "Click" si el contador es 1, de lo contrario muestra "Clicks"
          ],)
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            // Boton para decrementar el contador
            shape: const StadiumBorder(),
            onPressed: () {
              setState(() {
                clickCounter--;
                if (clickCounter < 0) { // Si el contador es menor que 0, se reinicia a 0
                  clickCounter = 0;
                }
              });
            },
            child: const Icon(Icons.exposure_minus_1),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            // Boton para incrementar el contador
            shape: const StadiumBorder(),
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
            child: const Icon(Icons.plus_one),
          ),
        ],
      ));
  }
  
}
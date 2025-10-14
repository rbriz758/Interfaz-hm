// SEGUNDA PANTALLA CON ESTÉTICA SIMILAR A MAINVIEW Y APPBAR BLANCA

import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  final List<String> movies = const [
    'Inception',
    'Interstellar',
    'The Dark Knight',
    'Pulp Fiction',
    'La naranja mecanica',
  ];

  @override
  Widget build(BuildContext context) {
    // Scaffold - Inicio
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: const Text(
          'Películas disponibles', // Text - Inicio y Fin
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white, // Barra blanca
        iconTheme: const IconThemeData(color: Colors.black), // iconos en negro si hay
      ),
      // Center - Inicio
      body: Center(
        // Column - Inicio
        child: Column(
          children: [
            // Container - Inicio
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'Selecciona tu película favorita:', // Text - Inicio y Fin
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ), // Container - Fin

            // ListView.builder - Inicio
            Expanded(
              child: ListView.builder(
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  // Container - Inicio
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[700],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    // Row - Inicio
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          movies[index], // Text - Inicio y Fin
                          style: const TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        // GestureDetector - Inicio
                        GestureDetector(
                          onTap: () {
                            // Acción de ejemplo: seleccionar película
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Seleccionaste: ${movies[index]}')),
                            );
                          },
                          // Container dentro de GestureDetector - Inicio
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: const Text(
                              'Seleccionar', // Text - Inicio y Fin
                              style: TextStyle(color: Colors.white),
                            ),
                          ), // Container dentro de GestureDetector - Fin
                        ), // GestureDetector - Fin
                      ],
                    ), // Row - Fin
                  ); // Container - Fin
                },
              ),
            ), // ListView.builder - Fin
          ],
        ), // Column - Fin
      ), // Center - Fin
    ); // Scaffold - Fin
  }
}

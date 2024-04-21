// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    int contador=0;
    TextStyle textStyle = const TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 60, 60, 60),
    );
   
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        title: Text('Contador', style: textStyle),
        centerTitle: true,
        backgroundColor: Colors.amber,
        shadowColor: Colors.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        elevation: 3,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Numero de clicks:',
              style: textStyle,
            ),
            Text('$contador', style: textStyle),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        elevation: 3,
        shape: const StadiumBorder(),
        tooltip: 'Añadir Click',
        heroTag: 'Añadir Click',
        onPressed: () {
          contador++;
          print(contador);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
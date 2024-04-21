import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  TextStyle textStyle = const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 60, 60, 60));

  void incrementar() => setState(() => contador++);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        title: Text('Contador', style: textStyle),
        centerTitle: true,
        backgroundColor: Colors.amber,
        shadowColor: Colors.black,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        elevation: 3,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Numero de clicks:', style: textStyle),
            Text('$contador', style: textStyle),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(72, 0, 0, 0),
                  offset: Offset(4, 4),
                  blurRadius: 3)
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.amber[200],
                foregroundColor: Colors.black,
                elevation: 3,
                shape: const StadiumBorder(),
                tooltip: 'Restar Click',
                heroTag: 'Restar Click',
                onPressed: () {
                  setState(() {
                    if (contador > 0) {
                      contador--;
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('No puedo seguir restando  -_-',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                          backgroundColor: Colors.amber,
                          duration: Duration(seconds: 1),
                          shape: StadiumBorder(),
                          dismissDirection: DismissDirection.horizontal,
                        ),
                      );
                    }
                  });
                },
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                backgroundColor: Colors.amber[200],
                foregroundColor: Colors.black,
                elevation: 3,
                tooltip: 'Resetear',
                heroTag: 'Resetear',
                onPressed: () {
                  setState(() {
                    contador = 0;
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Contador reiniciado uwu',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 20, color: Colors.black)),
                        backgroundColor: Colors.amber,
                        duration: Duration(seconds: 1),
                        shape: StadiumBorder(),
                        dismissDirection: DismissDirection.horizontal,
                      ),
                    );
                  });
                },
                child: const Icon(Icons.replay),
              ),
              FloatingActionButton(
                backgroundColor: Colors.amber[200],
                foregroundColor: Colors.black,
                elevation: 3,
                shape: const StadiumBorder(),
                tooltip: 'Añadir Click',
                heroTag: 'Añadir Click',
                onPressed: incrementar,
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

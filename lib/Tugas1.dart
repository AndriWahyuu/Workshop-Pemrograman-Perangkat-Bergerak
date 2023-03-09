import 'package:flutter/material.dart';

class Tugas1 extends StatefulWidget {
  const Tugas1({super.key, required this.title});

  final String title;

  @override
  State<Tugas1> createState() => _Tugas1State();
}

class _Tugas1State extends State<Tugas1> {
  int _counter = 1;
  String _text = "Prima";
  bool check = true;

  void _incrementCounter() {
    setState(() {
      _counter++;

      _text = "Prima: ";
      // loop untuk mengecek setiap bilangan dari 1 sampai n
      for (int i = 2; i <= _counter; i++) {
        check = true;
        // loop untuk mengecek apakah bilangan i merupakan bilangan prima atau tidak
        for (int faktor = 2; faktor < i; faktor++) {
          if (i % faktor == 0) {
            check = false;
            break;
          }
        }
        // jika i merupakan bilangan prima, tampilkan ke layar
        if (check) {
          _text += '$i, ';
        }
      }

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              _text,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
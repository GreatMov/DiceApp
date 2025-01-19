import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const Zar());
}

class Zar extends StatefulWidget {
  const Zar({super.key});

  @override
  State<Zar> createState() => _ZarState();
}

class _ZarState extends State<Zar> {

  int zarstanga = 1;
  int zardreapta = 1;

  void schimbare_zar(){
    setState((){
      zarstanga = Random().nextInt(6)+1;
      zardreapta = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: (){
                    schimbare_zar();
                  },
                  child: Image(
                    image: ExactAssetImage('images/$zarstanga.png'),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: (){
                    schimbare_zar();
                  },
                  child: Image(
                    image: ExactAssetImage('images/$zardreapta.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

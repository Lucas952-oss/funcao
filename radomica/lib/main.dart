import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dados'),
          backgroundColor: Colors.blue,
        ),
        body: Dados(),
      ),
    );
  }
}

class Dados extends StatefulWidget {
  @override
  _DadosState createState() => _DadosState();
}

class _DadosState extends State<Dados> {
  int numeroDadoEsquerda = 1;
  int numeroDadoDireita = 3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                numeroDadoEsquerda = Random().nextInt(6) + 1;
                print('Número do dado = $numeroDadoEsquerda');
              });
            },
            child: Image.asset('Imagens/Dado-$numeroDadoEsquerda.jpg'),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                numeroDadoDireita = Random().nextInt(6) + 1;
                print('Número do dado = $numeroDadoDireita');
              });
            },
            child: Image.asset('Imagens/Dado-$numeroDadoDireita.jpg'),
          ),
        ),
      ]),
    );
  }
}

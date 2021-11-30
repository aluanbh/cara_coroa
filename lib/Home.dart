import 'package:cara_coroa/TelaResultado.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _clicarJogar() {
    var itens = ["cara","coroa"];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaResultado(resultado)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("images/logo.png"),
            GestureDetector(
              onTap: _clicarJogar,
              child: Image.asset("images/botao_jogar.png"),
            ),
          ],
        ),
      ),
    );
  }
}

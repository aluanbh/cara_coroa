import 'package:cara_coroa/Home.dart';
import 'package:flutter/material.dart';

class TelaResultado extends StatefulWidget {
  String resultado;

  TelaResultado(this.resultado);

  @override
  _TelaResultadoState createState() => _TelaResultadoState();
}

class _TelaResultadoState extends State<TelaResultado> {
  @override
  Widget build(BuildContext context) {
    var _imagemApp;
    if (widget.resultado == "cara") {
      _imagemApp = ("images/moeda_cara.png");
    } else {
      _imagemApp = ("images/moeda_coroa.png");
    }
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(_imagemApp),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset("images/botao_voltar.png"),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class acercade extends StatelessWidget {
  const acercade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2eadf),
      appBar: AppBar(
        title: const Text("APP CONSULTA DE DATOS"),
        backgroundColor: Color(0xff255946),
      ),
      body: const Center(
        child: Text(
          "En esta aplicacion puedes consultar datos de las "
          "familias que tengan beca, mediante su id, curp o nombre",
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 40.0, fontFamily: 'Karla'),
        ),
      ),
    );
  }
}

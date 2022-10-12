import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BECAS",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBeca"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[nombre(), campoU(), campoC(), btnEntrar()],
      )),
    );
  }

  Widget nombre() {
    return Text(
      "Iniciar secion",
      style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
    );
  }

  Widget campoU() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 5),
      child: TextField(
        decoration: InputDecoration(hintText: "usuario admin"),
      ),
    );
  }

  Widget campoC() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 5),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(hintText: "contrasenia admin"),
      ),
    );
  }

  Widget btnEntrar() {
    return FloatingActionButton(
        focusColor: Colors.blue, onPressed: () {}, child: Text("Entrar"));
  }
}

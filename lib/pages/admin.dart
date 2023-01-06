import 'package:flutter/material.dart';

class admin extends StatefulWidget {
  const admin({super.key});
  @override
  State<admin> createState() => agregar();
}

class agregar extends State<admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2eadf),
      appBar: AppBar(
        title: Text("AAAADDDDMIIIIIN"),
        backgroundColor: Color(0xff255946),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.archive,
              color: Colors.black,
            ),
          ),
        ],
      )),
    );
  }

  Widget nombre() {
    return Text(
      "BUSCAR POR",
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
        backgroundColor: Color(0xff255946),
        onPressed: () {},
        child: Text("Entrar"));
  }
}

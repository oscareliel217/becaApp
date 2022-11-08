import 'dart:ffi';

import 'package:flutter/material.dart';

class consulta extends StatefulWidget {
  const consulta({super.key});
  @override
  State<consulta> createState() => consul();
}

class consul extends State<consulta> {
  @override
  String? gender;
  bool ss = false;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2eadf),
      appBar: AppBar(
        title: Text("CONSULTA DATOS DE FAMILIA"),
        backgroundColor: Color(0xff255946),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          titulo(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Text(
                  "buscar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    ss = !ss;
                  });
                },
                icon: const Icon(Icons.add_circle),
                label: Text("busqueda avanzada"),
              ),
              Visibility(
                visible: ss,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      sareId(),
                      nombre(),
                      curp(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search),
                        color: Color(0xff595756),
                      )
                    ]),
              ),
            ],
          ),
        ],
      )),
    );
  }

  Widget busque() {
    return FloatingActionButton(
      onPressed: () {},
      child: Text(
        "buscar",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget titulo() {
    return Text(
      "BUSCAR POR FAMILIA ID",
      style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
    );
  }

  Widget sareId() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
            hintText: "por sare id",
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }

  Widget nombre() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
            hintText: "por nombre",
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }

  Widget curp() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
            hintText: "por curp",
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }
}

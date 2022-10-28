import 'dart:ffi';

import 'package:flutter/material.dart';

class consulta extends StatefulWidget {
  const consulta({super.key});
  @override
  State<consulta> createState() => consul();
}

class consul extends State<consulta> {
  @override
  Widget build(BuildContext context) {
    String? gender;
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
          nombre(),
          Column(
            children: [
              Text(
                "SELECCIONA LA  MODALIDAD DE BUSQUEDA",
                style: TextStyle(fontSize: 18),
              ),
              Divider(),
              RadioListTile(
                title: Text("CURP"),
                value: "curp",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: Text("ID FAMILIA"),
                value: "idf",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: Text("REGION"),
                value: "region",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
            ],
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
}

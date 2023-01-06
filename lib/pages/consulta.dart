import 'dart:ffi';
import 'dart:convert';
import 'package:becapv/pages/vista.dart';
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
  bool dd = false;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2eadf),
      appBar: AppBar(
        title: Text("CONSULTA DATOS DE FAMILIA"),
        backgroundColor: Color(0xff255946),
      ),
      body: Center(
          child: ListView(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Visibility(
              visible: !dd,
              child: Column(
                children: [
                  titulo(),
                  SizedBox(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "por familia id",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.search)),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              transitionDuration: Duration(milliseconds: 300),
                              transitionsBuilder: (BuildContext context,
                                  Animation<double> Animation,
                                  Animation<double> secAnimation,
                                  Widget child) {
                                return ScaleTransition(
                                  alignment: Alignment.center,
                                  scale: Animation,
                                  child: child,
                                );
                              },
                              pageBuilder: (BuildContext context,
                                  Animation<double> Animation,
                                  Animation<double> secAnimation) {
                                return vista();
                              }));
                    },
                    child: Text(
                      "buscar",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 100,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    ss = !ss;
                    dd = !dd;
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  transitionDuration:
                                      Duration(milliseconds: 300),
                                  transitionsBuilder: (BuildContext context,
                                      Animation<double> Animation,
                                      Animation<double> secAnimation,
                                      Widget child) {
                                    return ScaleTransition(
                                      alignment: Alignment.center,
                                      scale: Animation,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (BuildContext context,
                                      Animation<double> Animation,
                                      Animation<double> secAnimation) {
                                    return vista();
                                  }));
                        },
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
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const vista()));
      },
      child: Text(
        "buscar",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget titulo() {
    return Text(
      "BUSCAR POR FAMILIA ID",
      style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
    );
  }

  Widget sareId() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 5),
        child: DropdownButtonFormField(
            items: <DropdownMenuItem>[], onChanged: (value) {}));
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

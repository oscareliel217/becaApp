import 'package:becapv/admin.dart';
import 'package:flutter/material.dart';

class logins extends StatefulWidget {
  const logins({super.key});
  @override
  State<logins> createState() => datos();
}

class datos extends State<logins> {
  final usuario = TextEditingController();
  final password = TextEditingController();

  String usu = '';
  String pas = '';
  String usu2 = 'admin';
  String pas2 = 'admin';
  bool ss = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2eadf),
      appBar: AppBar(
        title: Text("LOGIN"),
        backgroundColor: Color(0xff255946),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          nombre(),
          campoU(),
          campoC(),
          btnEntrar(),
        ],
      )),
    );
  }

  Widget nombre() {
    return Text(
      "Iniciar seción",
      style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
    );
  }

  Widget campoU() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 5),
      child: TextField(
        controller: usuario,
        decoration: InputDecoration(
          hintText: "usuario admin",
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget campoC() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 5),
      child: TextFormField(
        controller: password,
        obscureText: true,
        decoration: InputDecoration(
            hintText: "contrasenia admin", border: OutlineInputBorder()),
      ),
    );
  }

  Widget btnEntrar() {
    return FloatingActionButton(
        backgroundColor: Color(0xff255946),
        onPressed: () {
          usu = usuario.text;
          pas = password.text;
          if (usu == usu2 && pas == pas2) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const admin()));
          } else {
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('ALERTA'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: [
                          Text(
                              'verifica tus datos\nusuario y/o contrasenia incorrectos'),
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(
                        child: Text('aceptar'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  );
                });
          }
        },
        child: Text("Entrar"));
  }
}

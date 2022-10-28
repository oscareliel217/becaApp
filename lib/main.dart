import 'package:becapv/consulta.dart';
import 'package:becapv/loginAdmin.dart';
import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BECAS",
      home: pagIni(),
    );
  }
}

class pagIni extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2eadf),
      appBar: AppBar(
        title: Text("AppBeca"),
        backgroundColor: Color(0xff255946),
      ),
      body: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new SizedBox(
              child: Image.asset('assets/beni.jpg'),
            ),
            new OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Color(0xff255946), primary: Colors.white),
              child: Text("USUARIO ADMIN"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const logins()));
              },
            ),
            new OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Color(0xff255946), primary: Colors.white),
              child: Text("SOLO CONSULTA"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const consulta()));
              },
            ),
          ],
        ),
        /* child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              backgroundColor: Color(0xff255946), primary: Colors.white),
          child: Text("USUARIO ADMIN"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const logins()));
          },
        ),*/
      ),
    );
  }
}

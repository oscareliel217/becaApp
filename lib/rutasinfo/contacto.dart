import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class contacto extends StatelessWidget {
  const contacto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2eadf),
      appBar: AppBar(
        title: const Text("APP CONSULTA DE DATOS"),
        backgroundColor: Color(0xff255946),
      ),
      body: Center(
        child: new Column(
          children: <Widget>[
            Text(
              "Enlace de whatsapp para dudas o aclaraciones",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 40.0, fontFamily: 'Karla'),
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              'L.I Oscar Javier Perez Larios(Dto. Asistencia Tecnica): ',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 6.0,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                launch("https://wa.me/+529512746599");
              },
              icon: const Icon(Icons.whatsapp),
              label: Text("whatsApp"),
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              'Oscar Franco JImenez(Residente encargado del desarrollo de la app): ',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 6.0,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                launch("https://wa.me/+529514788463");
              },
              icon: const Icon(Icons.whatsapp),
              label: Text("whatsApp"),
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              'Martin Mendez Santiago(Residente encargado del desarrollo de la app): ',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 6.0,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                launch("https://wa.me/+529512746599");
              },
              icon: const Icon(Icons.whatsapp),
              label: Text("whatsApp"),
            ),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}

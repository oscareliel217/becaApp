import 'package:becapv/pages/consulta.dart';
import 'package:becapv/pages/homepage.dart';
import 'package:becapv/rutasinfo/acercade.dart';
import 'package:becapv/rutasinfo/contacto.dart';
import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BECAS",
      home: homepage(),
      routes: {
        '/acercade': (context) => const acercade(),
        '/contacto': (context) => const contacto()
      },
    );
  }
}

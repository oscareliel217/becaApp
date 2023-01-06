import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class datos extends StatefulWidget {
  const datos({super.key});

  @override
  State<datos> createState() => _datosState();
}

class _datosState extends State<datos> {
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/bd.json');
    final List<dynamic> data = await json.decode(response);
    List<int> optionList = List<int>.generate(data.length, (index) => index);
    List<int> questionsAdded = [];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class vista extends StatefulWidget {
  const vista({super.key});

  @override
  State<vista> createState() => ver();
}

class ver extends State<vista> {
  @override
  bool ss = false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2eadf),
      appBar: AppBar(
        title: Text("DATOS SOLICITADOS"),
        backgroundColor: Color(0xff255946),
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.8),
              child: InkWell(
                  child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    Text(
                      "DATOS GENERALES",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                    ListTile(
                        title: Text(
                          'ID FAMILIA: ',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 6.0,
                          ),
                        ),
                        leading: Icon(
                          Icons.supervised_user_circle_rounded,
                          color: Colors.blue[500],
                        )),
                    Visibility(
                      visible: ss,
                      child: Column(children: [
                        ListTile(
                            title: Text(
                              'REGION: ',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 6.0,
                              ),
                            ),
                            leading: Icon(
                              Icons.map,
                              color: Colors.blue[500],
                            )),
                        ListTile(
                            title: Text(
                              'MUNICIPIO: ',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 6.0,
                              ),
                            ),
                            leading: Icon(
                              Icons.maps_home_work,
                              color: Colors.blue[500],
                            )),
                        ListTile(
                            title: Text(
                              'LOCALIDAD: ',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 6.0,
                              ),
                            ),
                            leading: Icon(
                              Icons.maps_home_work_rounded,
                              color: Colors.blue[500],
                            )),
                        ListTile(
                            title: Text(
                              'ESTADO DEL PROGRAMA: ',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 6.0,
                              ),
                            ),
                            leading: Icon(
                              Icons.question_mark,
                              color: Colors.blue[500],
                            )),
                      ]),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        setState(() {
                          ss = !ss;
                        });
                      },
                      child: const Text(
                        'mas detalles',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.8),
              child: InkWell(
                  child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    Text(
                      "DETALLADO DE PAGOS POR ANIO",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                    ListTile(
                        title: Text(
                          '2019: ',
                          style: TextStyle(
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 6.0,
                          ),
                        ),
                        leading: Icon(
                          Icons.date_range,
                          color: Colors.blue[500],
                        )),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: null,
                      child: const Text(
                        'mas detalles',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.8),
              child: InkWell(
                  child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    ListTile(
                        title: Text(
                          '2020: ',
                          style: TextStyle(
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 6.0,
                          ),
                        ),
                        leading: Icon(
                          Icons.date_range,
                          color: Colors.blue[500],
                        )),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: null,
                      child: const Text(
                        'mas detalles',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.8),
              child: InkWell(
                  child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    ListTile(
                        title: Text(
                          '2021: ',
                          style: TextStyle(
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 6.0,
                          ),
                        ),
                        leading: Icon(
                          Icons.date_range,
                          color: Colors.blue[500],
                        )),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: null,
                      child: const Text(
                        'mas detalles',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.8),
              child: InkWell(
                  child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    ListTile(
                        title: Text(
                          '2022: ',
                          style: TextStyle(
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 6.0,
                          ),
                        ),
                        leading: Icon(
                          Icons.date_range,
                          color: Colors.blue[500],
                        )),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: null,
                      child: const Text(
                        'mas detalles',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}

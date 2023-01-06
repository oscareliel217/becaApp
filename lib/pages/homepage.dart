import 'package:becapv/rutasinfo/acercade.dart';
import 'package:flutter/material.dart';
import 'consulta.dart';
import 'loginAdmin.dart';

class homepage extends StatelessWidget {
  @override
  var selectedItem = '';
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2eadf),
      appBar: AppBar(
        actions: <Widget>[
          PopupMenuButton(onSelected: (value) {
            // your logic
            setState(() {
              selectedItem = value.toString();
            });
            print(value);
            Navigator.pushNamed(context, value.toString());
          }, itemBuilder: (BuildContext bc) {
            return const [
              PopupMenuItem(
                child: Text("Acerca de"),
                value: '/acercade',
              ),
              PopupMenuItem(
                child: Text("Contacto"),
                value: '/contacto',
              )
            ];
          })
        ],
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
                          return logins();
                        }));
              },
            ),
            new OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Color(0xff255946), primary: Colors.white),
              child: Text("SOLO CONSULTA"),
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
                          return consulta();
                        }));
              },
            ),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}

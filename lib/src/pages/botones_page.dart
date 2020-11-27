import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            _fondoApp(),
            SingleChildScrollView(
              child: Column(
                children: [_titulos(), _botonesRedondeados()],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _bottomNavigatorBar(context),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: <TableRow>[
        TableRow(children: <Widget>[
          _crearBotonRedondeado(Colors.blue, Icons.border_all, "General"),
          _crearBotonRedondeado(Colors.purpleAccent, Icons.directions, "Direction"),
        ]),
        TableRow(children: <Widget>[
          _crearBotonRedondeado(Colors.greenAccent, Icons.home, "Casa"),
          _crearBotonRedondeado(Colors.amberAccent, Icons.access_alarm, "Alarma"),
        ]),
        TableRow(children: <Widget>[
          _crearBotonRedondeado(Colors.deepOrangeAccent, Icons.account_circle, "Perfil"),
          _crearBotonRedondeado(Colors.redAccent, Icons.favorite_border, "Corazòn"),
        ]),
        TableRow(children: <Widget>[
          _crearBotonRedondeado(Colors.indigoAccent, Icons.flight_takeoff, "Viaje Salida"),
          _crearBotonRedondeado(Colors.deepPurpleAccent, Icons.flight_land, "Viaje LLegada"),
        ]),
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String texto) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5.0),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(
                  icono,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              Text(texto, style: TextStyle(color: color)),
              SizedBox(height: 5.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomNavigatorBar(BuildContext context) {
    return new Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
            primaryColor: Colors.pinkAccent,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
                size: 30.0,
              ),
              title: Container(),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.insert_chart, size: 30.0), title: Container()),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle, size: 30.0),
                title: Container()),
          ],
        ));
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Classify Transaction",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            Text("Classify this transaction into a particular category",
                style: TextStyle(color: Colors.white, fontSize: 18.0))
          ],
        ),
      ),
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(52, 54, 101, 1.0),
        Color.fromRGBO(35, 37, 57, 1.0)
      ], begin: FractionalOffset(0.0, 0.6), end: FractionalOffset(0.0, 1))),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90.0),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ])),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100.0,
          child: cajaRosa,
        )
      ],
    );
  }
}

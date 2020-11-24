import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  String _textContent =
      "Lake Oeschinen lies at the foot of the Bluemlisalp in the Berneses Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, whichwarms to 20 degress Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.";
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        _crearImagen(),
        _crearTitulo(),
        _crearAcciones(),
        _crearTexto(),
        _crearTexto(),
        _crearTexto(),
        _crearTexto(),
        _crearTexto(),
        _crearTexto(),
        _crearTexto(),
      ]),
    ));
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          _textContent,
          style: TextStyle(),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

  Widget _crearAccion(IconData icon, String texto) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _crearAccion(Icons.call, "CALL"),
        _crearAccion(Icons.near_me, "ROUTE"),
        _crearAccion(Icons.share, "SHARE")
      ],
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lago con un puente",
                    style: estiloTitulo,
                  ),
                  SizedBox(height: 7.0),
                  Text(
                    "un lago en Alemania",
                    style: estiloSubTitulo,
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red[500],
              size: 30.0,
            ),
            Text("41")
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    final url = "https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";

    return Container(
      width: double.infinity,
      child: Image(
          image: NetworkImage(url),
          height: 200.0,
          fit: BoxFit.cover,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[_pagina1(), _pagina2()],
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );
  }

  Widget _textos() {
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text("11º", style: estiloTexto),
          Text("Miercoles", style: estiloTexto),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white)
        ],
      ),
    );
  }

  Widget _imagenFondo() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Image(
        image: AssetImage("assets/scroll-1.png"),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 208, 1.0),
    );
  }

  Widget _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          onPressed: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text("Bienvenidos", style: TextStyle(fontSize: 20.0)),
          ),
          shape: StadiumBorder(),
          textColor: Colors.white,
          color: Colors.blue,
        ),
      ),
    );

    //   return Container(
    //     padding: EdgeInsets.all(10.0),
    //     color: Colors.cyan[300],
    //     child: Center(
    //       child: ClipRRect(
    //         borderRadius: BorderRadius.circular(30.0),
    //         child: FlatButton(
    //           padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 12.0),
    //           textColor: Colors.white,
    //           onPressed: () {},
    //           color: Colors.blue,
    //           child: Text(
    //             "Bienvenido",
    //           ),
    //         ),
    //       ),
    //     ),
    //   );
    // }
  }
}

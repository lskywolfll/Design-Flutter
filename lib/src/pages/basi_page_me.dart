import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  String _textContent = "Lake Oeschinen lies at the foot of the Bluemlisalp in the Berneses Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, whichwarms to 20 degress Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image(
            image: NetworkImage(
                "https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")),
        SizedBox(
          height: 20.0,
        ),
        _description(),
        SizedBox(height: 30.0),
        _actions(),
        SizedBox(height: 30.0),
        Container(
          alignment: Alignment.center,
          width: 350.0,
          child: Text(_textContent, style: TextStyle(fontSize: 15.0,), textAlign: TextAlign.justify,),
        )
      ],
    ));
  }

  Container _call() {
    return Container(
      margin: EdgeInsets.only(left: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.call,
            color: Colors.blue[400],
            size: 30.0,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text("CALL",
              style: TextStyle(color: Colors.blue[400], fontSize: 14.0))
        ],
      ),
    );
  }

  Container _nearMe() {
    return Container(
      margin: EdgeInsets.only(left: 50.0, right: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.near_me,
            color: Colors.blue[400],
            size: 30.0,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text("ROUTE",
              style: TextStyle(color: Colors.blue[400], fontSize: 14.0))
        ],
      ),
    );
  }

  Container _share() {
    return Container(
      margin: EdgeInsets.only(right: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.share,
            color: Colors.blue[400],
            size: 30.0,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text("SHARE",
              style: TextStyle(color: Colors.blue[400], fontSize: 14.0))
        ],
      ),
    );
  }

  Row _actions() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[_call(), _nearMe(), _share()],
    );
  }

  Row _description() {
    return Row(
      children: <Widget>[
        SizedBox(width: 40.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Oeschinen Lake Campground",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            SizedBox(height: 5.0),
            Text("Kandersteg, Switzerland",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15,
                ))
          ],
        ),
        SizedBox(width: 49.0),
        Icon(
          Icons.star,
          color: Colors.orange[700],
          size: 40.0,
        ),
        Text(
          "41",
          style: TextStyle(fontSize: 23.0),
        )
      ],
    );
  }
}

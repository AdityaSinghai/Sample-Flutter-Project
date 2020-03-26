import 'package:flutter/material.dart';
import'dart:math';
void main() {
  runApp(BallPage());
}


class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
        title:Center(
          child: Text(
              "Ask Me Anything",
              style:TextStyle(
                fontSize: 30.0,
                fontFamily: "Pacifico",
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )
          ),
        ),
          backgroundColor: Colors.blue[900],
        ),
        body:Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  int number=1;
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          setState(() {
            print("Button pressed!");
            number = Random().nextInt(5)+1;
          });
        },
        child: Image.asset("images/ball$number.png"),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red[300],
      appBar: AppBar(
        title: Text('Date A Dish'),
        backgroundColor: Colors.red[200],
      ),
      body: dish(),
    ),
  ));
}

class dish extends StatefulWidget {
  @override
  _dishState createState() => _dishState();
}

class _dishState extends State<dish> {
  int newImage = 1;
  @override
  Widget build(BuildContext context) {
    void randomFood() {
      setState(() {
        newImage = Random().nextInt(6) + 1;
      });
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
        child: Column(
          children: <Widget>[
            Image(
              height: 450.0,
              width: 300.0,
              image: AssetImage('images/food$newImage.jpg'),
            ),
            SizedBox(
              height: 20.0,
            ),
            MaterialButton(
              color: Colors.indigo[400],
              minWidth: 100.0,
              height: 50.0,
              child: Text(
                'New Dish',
                style: TextStyle(
                  color: Colors.red[200],
                  letterSpacing: 1.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                randomFood();
              },
            )
          ],
        ),
      ),
    );
  }
}

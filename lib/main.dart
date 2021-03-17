import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Dicepage(),
      ),
    ),
  );
}
class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 3;

  void ChangeDiceface(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                ChangeDiceface();

              },
              child: Image.asset('images/dice$leftDiceNumber.png'),),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
               ChangeDiceface();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),),
          ),

        ],
      ),

    );
  }
  }






import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[900],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var RightDiceNumber = 1;

  void changeDices(){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      RightDiceNumber= Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          // Expandible is Smart Sizing of an image on phone screen
          // Flex is the portion of the screen that you want it to acquire
          Expanded(
            flex: 1,
            child:FlatButton(
              // () ==> Empty because no argument given as an input
              onPressed: (){
                changeDices();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),

          // Expandible is Smart Sizing of an image on phone screen
          // Flex is the portion of the screen that you want it to acquire
          Expanded(
            child: FlatButton(
              //() ==> Empty because no argument given as an input
                onPressed: (){
                  changeDices();
                },
                child: Image.asset('images/dice$RightDiceNumber.png')
            ),
          ),

        ],
      ),
    );
  }
}


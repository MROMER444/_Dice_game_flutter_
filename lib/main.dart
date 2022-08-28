import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}



class DicePage extends StatefulWidget {

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int LeftDiceNumber = 6;
  int RightDiceNumber = 6;

  void updater(){
    LeftDiceNumber = Random().nextInt(6)+1;
    RightDiceNumber = Random().nextInt(6)+1;
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                    setState(() {
                      updater();
                    });
                },
                child: Image.asset("assets/images/dice$LeftDiceNumber.png")),
          ),
          Expanded(
            child: TextButton(onPressed: () {
              setState(() {
                updater();
              });
            },
                child: Image.asset("assets/images/dice$RightDiceNumber.png")),
          ),
        ],
      ),
    );
  }
}

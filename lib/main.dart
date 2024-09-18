import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Dice Roller'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNumber1 = 1;
  int diceNumber2 = 1;

  void rollDice() {
    setState(() {
      diceNumber1 = Random().nextInt(6) +
          1; // Tạo số ngẫu nhiên từ 1 đến 6 cho viên xúc xắc 1
      diceNumber2 = Random().nextInt(6) +
          1; // Tạo số ngẫu nhiên từ 1 đến 6 cho viên xúc xắc 2
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/dice$diceNumber1.png',
                  width: 100, height: 100), // Hình ảnh viên xúc xắc 1
              SizedBox(width: 20),
              Image.asset('assets/dice$diceNumber2.png',
                  width: 100, height: 100), // Hình ảnh viên xúc xắc 2
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: rollDice,
            child: Text('Roll Dice'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          ),
        ],
      ),
    );
  }
}

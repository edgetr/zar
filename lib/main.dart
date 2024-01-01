import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Dice()));

}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int diceNumber = 1;

  void rollDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Image.asset('assets/$diceNumber.png'),
                    Text(
                      '$diceNumber',
                      style: TextStyle(
                        fontSize:
                            100,
                        fontWeight: FontWeight.bold,
                        color: Colors.red
                            ,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  child: Text('Roll Dice', style: TextStyle(color: Colors.red )),
                  onPressed: rollDice,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      decoration: BoxDecoration(
        
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.1), BlendMode.dstATop),
          image: AssetImage('asset/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
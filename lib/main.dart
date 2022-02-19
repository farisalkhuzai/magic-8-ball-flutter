import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(76, 162, 245, 1.0),
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Color.fromRGBO(49, 88, 171, 1.0),
        ),
        body: magic8ball(),
      ),
    ),
  );
}
class magic8ball extends StatefulWidget {



  @override
  _magic8ballState createState() => _magic8ballState();
}

class _magic8ballState extends State<magic8ball> {

  int ballnum = 1;
  void picknumber(){
    setState(() {
      ballnum = Random().nextInt(5) + 1;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(child: TextButton(
            child: Image.asset('images/ball$ballnum.png'),
            onPressed: () {
              picknumber();
            },
          ))
        ],
      ),
      
    );
  }
}

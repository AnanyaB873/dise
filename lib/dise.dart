import 'dart:math';

import 'package:flutter/material.dart';
class dise extends StatefulWidget {
  const dise({Key? key}) : super(key: key);

  @override
  State<dise> createState() => _diseState();
}

class _diseState extends State<dise> {
  int leftdisenumber=2;
  int rightdisenumber=1;
  void changeDicenumber(){
    setState(() {
      leftdisenumber=Random().nextInt(6)+1;
      rightdisenumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.brown,
        appBar: AppBar(title: Text('dise'),),
        body: Row(
        children: [
          Expanded(


            child: TextButton(onPressed: (changeDicenumber), child:Image.asset('dise/dise$leftdisenumber.jpeg'),

            ),
          ),
          Expanded(
              child: TextButton(onPressed: (changeDicenumber), child: Image.asset('dise/dise$rightdisenumber.jpeg')))
          ],
    )
        );







  }
}

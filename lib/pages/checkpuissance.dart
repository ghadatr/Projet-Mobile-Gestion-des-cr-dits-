import 'package:flutter/material.dart';
class Checkp extends StatefulWidget {
  @override
  _CheckpState createState() => _CheckpState();
}


class _CheckpState extends State<Checkp> {
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;

  List puissance = ['4CV', '5CV-8CV', '9CV+'];
  @override
  Widget build(BuildContext context) {
    return 
      Column(
        children : [
          Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
        Row(
          children: [
            Text(puissance[0]),
        Checkbox(
            value: val1,
            onChanged: (bool value) {
                setState(() {
                    val1 = value;
                    val2 = false ;
                    val3 = false ;
                });
            },
        ),
          ],
        ),
        Row(children: [
          Text(puissance[1]),
        Checkbox(
            value: val2,
            onChanged: (bool value) {
                setState(() {
                    val2 = value;
                    val1 = false;
                    val3 = false;

                });
            },
        ),
        ],),
        Row(children: [
          Text(puissance[2]),
        Checkbox(
            value: val3,
            onChanged: (bool value) {
                setState(() {
                    val3 = value;
                    val1 = false;
                    val2 = false;

                });
            },
        ),
        ],),
    ],    
    ),
        ]
      );
  }
}
import 'package:flutter/material.dart';
import 'choseCredit.dart';
class Period extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children : [
        Text('choisissez la periodicité des échéances' ,textAlign: TextAlign.center, style: TextStyle(fontSize : 18, color: Colors.blue[900], fontWeight: FontWeight.w400),),
        SizedBox(
          height : 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children :[
          ChoseCredit('Mensuelle', 0.42),
          ChoseCredit('Trimestrielle', 0.42),
        ]),
        SizedBox(
          height : 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children :[
          ChoseCredit('Semestrielle', 0.42),
          ChoseCredit('Annuelle', 0.42),
        ]),
        SizedBox(
          height : 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children :[
          ChoseCredit('Quadrimestrielle', 0.45),
          ChoseCredit('Bimensuelle', 0.42),
        ]),
      ]),
    );
  }
}
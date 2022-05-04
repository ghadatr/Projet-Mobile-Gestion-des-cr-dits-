import 'package:flutter/material.dart';
class CheckAll extends StatefulWidget {
  @override
  _CheckAllState createState() => _CheckAllState();
}

class _CheckAllState extends State<CheckAll> {
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  bool val4 = false;
  bool val5 = false;
  bool val6 = false;
  List taux = ['Mensuelle', 'Trimestrielle', 'Semestrielle','Quadrisemestrielle','Annuelle','Bimensuelle'];
  @override
  Widget build(BuildContext context) {
    return 
          Container(
            margin: EdgeInsetsDirectional.only(start : 30), 
            child: Column(
        children: <Widget>[
            
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children :[
            Text(taux[0]),
        Checkbox(
              value: val1,
              onChanged: (bool value) {
                  setState(() {
                      val1 = value;
                      val2 = false ;
                      val3 = false;
                      val4 = false;
                      val5 = false;
                      val6 = false;
                  });
              },
        ),
        ]),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(taux[1]),
        Checkbox(
              value: val2,
              onChanged: (bool value) {
                  setState(() {
                      val2 = value;
                      val1 = false;
                      val3 = false;
                      val4 = false;
                      val5 = false;
                      val6 = false;
                  });
              },
        ),
        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(taux[2]),
        Checkbox(
              value: val3,
              onChanged: (bool value) {
                  setState(() {
                      val2 = false;
                      val1 = false;
                      val3 = value;
                      val4 = false;
                      val5 = false;
                      val6 = false;
                  });
              },
        ),
        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(taux[3]),
        Checkbox(
              value: val4,
              onChanged: (bool value) {
                  setState(() {
                      val2 = false;
                      val1 = false;
                      val3 = false;
                      val4 = value;
                      val5 = false;
                      val6 = false;
                  });
              },
        ),
        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(taux[4]),
        Checkbox(
              value: val5,
              onChanged: (bool value) {
                  setState(() {
                      val2 = false;
                      val1 = false;
                      val3 = false;
                      val4 = false;
                      val5 = value;
                      val6 = false;
                  });
              },
        ),
        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(taux[5]),
        Checkbox(
              value: val6,
              onChanged: (bool value) {
                  setState(() {
                      val2 = false;
                      val1 = false;
                      val3 = false;
                      val4 = false;
                      val5 = false;
                      val6 = value;
                  });
              },
        ),
        ],),
   
        ]
      ),
          );
  }
}
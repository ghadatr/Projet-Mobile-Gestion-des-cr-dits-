import 'package:flutter/material.dart';
import 'textflield.dart';
class Check extends StatefulWidget {
  List taux ;
  Check(this.taux);
  @override
  _CheckState createState() => _CheckState();
}


class _CheckState extends State<Check> {
  bool fixe = false;
  bool variable = false;
  
  @override
  Widget build(BuildContext context) {
    return 
      Column(
        children : [
          Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
        Row(children :[
          Text(widget.taux[0]),
        Checkbox(
            value: fixe,
            onChanged: (bool value) {
                setState(() {
                    fixe = value;
                    variable = false ;
                });
            },
        ),
        ]),
        
        Row(children: [
          Text(widget.taux[1]),
        Checkbox(
            value: variable,
            onChanged: (bool value) {
                setState(() {
                    variable = value;
                    fixe = false;
                });
            },
        ),
        ],)
    ],    
    ),
    if (variable == true)
        TextF('taux désiré entre 8% et 15%')
    
        ]
      );
  }
}
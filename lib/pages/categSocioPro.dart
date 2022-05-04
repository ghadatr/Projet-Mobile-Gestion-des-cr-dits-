import 'package:flutter/material.dart';
class CategSocPro extends StatefulWidget {
  @override
  _CategSocProState createState() => _CategSocProState();
}

class _CategSocProState extends State<CategSocPro> {
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  bool val4 = false;
  List taux = ['Salarié', 'Senior', 'Profession libérale',"Résident à l'étranger"];
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
                      
                  });
              },
        ),
        ],),
        ]
      ),
          );
  }
}

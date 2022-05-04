import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'vehiculeNeufScreen.dart'; 
class ChoseCredit extends StatelessWidget {
  String nom ;
  var mywidth;
  ChoseCredit(this.nom, this.mywidth);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
          width : MediaQuery.of(context).size.width * mywidth,
          child: RaisedButton(
            color: Color(0xFF262AAA),            elevation:5.0,
            splashColor: Colors.grey[400],
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0),
              side: BorderSide(color: Colors.black),
            ),
            padding: EdgeInsets.all(13.0),
            onPressed: () {},
            child: Center(child: Text(nom, style: TextStyle( fontSize: 17, color: Colors.white), softWrap: true,)),
),
        ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'MyVehiculepage.dart';
import 'choseCredit.dart';

class MyAccountsPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body :
      ListView(
          children:[
            SizedBox(
              height: 25,
            ),
            Text('Bienvenue chez EasyCred', textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, color: Colors.blueGrey[600]), softWrap: true,),
            SizedBox(
              height: 30,
            ),
            ChoseCredit('Credit Consommation', 0.65 ,),
            SizedBox(
              height: 10,
            ),
            ChoseCredit('Credit véhicule', 0.65),
            SizedBox(
              height: 10,
            ),
            ChoseCredit('Credit aménagement', 0.65),
            SizedBox(
              height: 10,
            ),
            ChoseCredit('Credit immobiler', 0.65),
            SizedBox(
              height: 10,
            ),
            ChoseCredit('Credit education', 0.65),
            SizedBox(
              height: 10,
            ),
            ChoseCredit('Credit besoin médical', 0.65),
            SizedBox(
              height: 10,
            ),
            ChoseCredit('Credit besoin islamique et voyage', 0.65),
            SizedBox(
              height: 10,
            ),
            ChoseCredit('Credit Electronique', 0.65),
            SizedBox(
              height: 10,
            ),
          ]


      ),
    );
  }
}

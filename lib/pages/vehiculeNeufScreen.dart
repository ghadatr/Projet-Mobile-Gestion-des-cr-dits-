import 'package:pfa/bloc.navigation_bloc/navigation_bloc.dart';

import 'categSocioPro.dart';
import 'choseCredit.dart';
import 'package:flutter/material.dart';
import 'categSocioPro.dart';
import 'choseCredit.dart';
import 'textflield.dart';
//import 'periodicité.dart';
import 'periodProfesssion.dart';
import 'checkBox.dart';
import 'checkpuissance.dart';
class VehiculeNeuveScreen extends StatelessWidget with NavigationStates  {
  List taux = ['fixe', 'variable'];
   List amortissement = ['Linéare', 'Annuité Constante'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        elevation: 0.5,
        title: Text('Véhicule Neuve',style: TextStyle(fontSize : 20, fontWeight: FontWeight.w500), ),

      ),
      drawer: Drawer(),
      backgroundColor: Colors.white,
      body: ListView(
        children : [
          SizedBox(
            height : 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child : Text('Remplir les champs selon les caractéristiques du credit que vous voulez avoir :', style: TextStyle(fontSize : 17, color: Colors.blue[900], fontWeight: FontWeight.w500), softWrap: true,),
          ),
          SizedBox(
            height : 18,
          ),
          TextF('montant'),
          SizedBox(
            height : 12,
          ),
          TextF('Duré (1 mois à 84 mois)'),
          SizedBox(
            height : 12,
          ),
          TextF('Apport propre'),
          SizedBox(
            height : 12,
          ),
          TextF('Revenu mensuel'),
          SizedBox(
            height : 20,
          ),
          Text('choisissez la periodicité des échéances' ,textAlign: TextAlign.center, style: TextStyle(fontSize : 18, color: Colors.blue[900], fontWeight: FontWeight.w400),),
        SizedBox(
            height : 8,
        ),
          CheckAll(),
          SizedBox(
            height : 20,
          ),
          TextF('Date de 1er remboursement'),
          SizedBox(
            height : 25,
          ),
          Text('Choisissez le type de taux :', textAlign: TextAlign.center, style: TextStyle(fontSize : 18, color: Colors.blue[900], fontWeight: FontWeight.w400),),
          SizedBox(
            height : 8,
          ),
          Check(taux),
          SizedBox(
            height : 25,
          ),
          Text('Choisissez la puissance fiscale:', textAlign: TextAlign.center, style: TextStyle(fontSize : 18, color: Colors.blue[900], fontWeight: FontWeight.w400),),
          SizedBox(
            height : 8,
          ),
          Checkp(),
          SizedBox(
            height : 12,
          ),
          Text('Choisissez votre catégorie socioprofessionnelle : ', textAlign: TextAlign.center, style: TextStyle(fontSize : 18, color: Colors.blue[900], fontWeight: FontWeight.w400),),
        SizedBox(
          height : 12
        ),
          CategSocPro(),
          SizedBox(
            height : 17,
          ),
          Text("Choisissez le type d'amortissement : ", textAlign: TextAlign.center, style: TextStyle(fontSize : 18, color: Colors.blue[900], fontWeight: FontWeight.w400),),
          Check(amortissement),
          SizedBox(
            height : 17,
          ),
          ChoseCredit('Submit', 0.7),
          SizedBox(
            height : 25,
          ),
        ]
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc.navigation_bloc/navigation_bloc.dart';

class MyVehiculePage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('        Vehicule'),
            backgroundColor: Color(0xFF262AAA),


          ),
          body: Center(child: Column(children: <Widget>[
            SizedBox(
              height: 40,),
            Container(
              width: 500.0,
              margin: EdgeInsets.all(20),
              child : ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSU85_-PN0Usvlc9WyVUQwP5bfQIqmlubIBbFpNOVOoH5DlfM3g8ysTI6pY2BFzp7ZmKGo&usqp=CAU',
                  )),
                ),),
            SizedBox(
              height: 25,),
              Container(
                  child :Text(
                    'Type Vehicule', textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: Colors.black), softWrap: true,),

              ),
            SizedBox(
              height: 35,),
              Container(
                child: FlatButton(
                child: Text(
                  "Credit Vehicule Neuve ", style: TextStyle(fontSize: 20.0),),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                    color: Color(0xFF262AAA),

                textColor: Colors.white,
                onPressed: () {
                  BlocProvider.of<NavigationBloc>(context).add(
                      NavigationEvents.vehiculeNeuve);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: FlatButton(
                  child: Text('Credit Vehicule Occasion',
                    style: TextStyle(fontSize: 20.0),),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Color(0xFF262AAA),
                  textColor: Colors.white,
                  onPressed: () {
                    BlocProvider.of<NavigationBloc>(context).add(
                        NavigationEvents.vehiculeOccasion);
                  }

              ),
            ),
          ]
          ))
      ),
    );
  }}

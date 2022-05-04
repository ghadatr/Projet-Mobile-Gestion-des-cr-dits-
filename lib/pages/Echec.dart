import 'package:flutter/material.dart';
import 'package:pfa/pages/login.dart';
import 'package:pfa/pages/signup.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';

class Echec extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Column(children: <Widget>[
          SizedBox(
            height: 0,), Container(
            // we will give media query height
            // double.infinity make it big as my parent allows
            // while MediaQuery make it big as per the screen

            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              // even space distribution
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        height: MediaQuery.of(context).size.height /3,
                        child : Image(
                          image: NetworkImage("https://www.pngkey.com/png/full/16-161537_picture-freeuse-explosion-like-text-bubbles-transprent-oops.png"),
                        )
                    ),SizedBox(
                      height: 20,
                    ),
                    Text(
                      "OOPS!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,

                      ),

                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Votre demande a été refusé par toutes les banques ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Text("Vous devez respecter tous les conditions ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 15,

                      ),)
                  ],
                ),




              ],
            ),
          ),
        ],
        ),
        ),
      ),
    );
  }
}

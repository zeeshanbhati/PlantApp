import 'dart:async';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/main.dart';
import 'package:google_fonts/google_fonts.dart';



class SplashScreen extends StatefulWidget {
  static final String id = "SplashScreen.dart";
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context)=> MyHomePage())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(height:300,width:300,child: FlareActor("assets/Plant.flr",fit: BoxFit.contain,animation: "Untitled",)),
          SizedBox(height:30),
          Text("Plant Care",style: GoogleFonts.lato(fontSize: 30,fontWeight:FontWeight.bold)),

        ],
      )),
      
    );
  }
}

import 'dart:async';

import 'package:blogapp/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'option_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void initState(){
    super.initState();
    final user = auth.currentUser;
    if(user != null){
      Timer(Duration(seconds: 3),()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen())));
    }else{
      Timer(Duration(seconds: 3),()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> OptionScreen())));
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        
        children: [
          Image(
              image: AssetImage('assets/img/logo.jpg')
          )
        ],
      ),
    );
  }
}

import 'package:blogapp/components/round_button.dart';
import 'package:blogapp/screens/login.dart';
import 'package:blogapp/screens/signin.dart';
import 'package:flutter/material.dart';

class OptionScreen extends StatefulWidget {
  const OptionScreen({Key? key}) : super(key: key);

  @override
  State<OptionScreen> createState() => _OptionScreenState();
}

class _OptionScreenState extends State<OptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/img/profile.png', height: 300,),

              SizedBox(height: 30),

              RoundButton(title: 'Login', onPress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
              }),

            SizedBox(
              height: 30,
            ),

            RoundButton(title: 'Register', onPress: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
              })
            ],
          ),
        ),
      ),
    );
  }
}

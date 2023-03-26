import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  RoundButton({required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      clipBehavior: Clip.antiAlias,
      child: MaterialButton(
        padding: EdgeInsets.all(20),
        height: 50,
        color: Colors.indigo,
        minWidth: double.infinity,
        child: Text(title, style: TextStyle(color: Colors.white, fontSize: 22,)),
        onPressed: onPress,
      ),
    );
  }
}

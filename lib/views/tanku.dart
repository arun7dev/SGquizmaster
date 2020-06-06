import 'package:flutter/material.dart';

class Thank extends StatefulWidget {
  @override
  _ThankState createState() => _ThankState();
}

class _ThankState extends State<Thank> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Thank \nYou \nFor \nParticipating',
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 50),
        ),
      ),
    ));
  }
}

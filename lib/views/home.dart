import 'dart:async';

import 'package:flutter/material.dart';

import 'package:sg_quiz_master/views/cpp.dart';
import 'package:sg_quiz_master/views/java.dart';
import 'package:sg_quiz_master/views/sql.dart';
import 'package:sg_quiz_master/widgets/widgets.dart';
import 'package:slimy_card/slimy_card.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

final RoundedLoadingButtonController _btnController =
    new RoundedLoadingButtonController();

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.black,
        appBar: AppBar(
          title: appBar(context),
          backgroundColor: Colors.white,
          elevation: 0,
          brightness: Brightness.light,
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              SlimyCard(
                color: Colors.red,
                width: 400,
                topCardHeight: 200,
                bottomCardHeight: 200,
                borderRadius: 15,
                topCardWidget: myWidget01(
                  title: 'C++',
                  colour: Colors.black54,
                ),
                bottomCardWidget: Center(
                  child: myWidget02(
                    title: 'Their will be 5 questions based on C++.\n'
                        'Only one correct answer \n'
                        'multiple touch not allowed',
                    colour: Colors.white,
                    name: CPP(),
                  ),
                ),
                slimeEnabled: true,
              ),
              SizedBox(
                height: 20,
              ),
              SlimyCard(
                color: Colors.pinkAccent,
                width: 400,
                topCardHeight: 200,
                bottomCardHeight: 200,
                borderRadius: 15,
                topCardWidget:
                    myWidget01(title: 'Java', colour: Colors.black54),
                bottomCardWidget: Center(
                  child: myWidget02(
                    title: 'Their will be 5 questions based on Java.\n'
                        'Only one correct answer \n'
                        'multiple touch not allowed',
                    colour: Colors.white,
                    name: java(),
                  ),
                ),
                slimeEnabled: true,
              ),
              SizedBox(
                height: 20,
              ),
              SlimyCard(
                color: Colors.green,
                width: 400,
                topCardHeight: 200,
                bottomCardHeight: 200,
                borderRadius: 15,
                topCardWidget: myWidget01(title: 'SQL', colour: Colors.black54),
                bottomCardWidget: Center(
                  child: myWidget02(
                    title: 'Their will be 5 questions based on SQL.\n'
                        'Only one correct answer \n'
                        'multiple touch not allowed',
                    colour: Colors.white,
                    name: sql(),
                  ),
                ),
                slimeEnabled: true,
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
//
      ),
    );
  }
}

class myWidget01 extends StatelessWidget {
  myWidget01({this.title, this.colour});
  final String title;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            color: colour,
            fontSize: 150,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

class myWidget02 extends StatelessWidget {
  myWidget02({this.title, this.colour, this.name});
  final String title;
  final Color colour;
  final name;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
              color: colour,
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        RoundedLoadingButton(
            child: Text('Start', style: TextStyle(color: Colors.white)),
            controller: _btnController,
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => name));
            })
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sg_quiz_master/views/cpp.dart';

import 'package:sg_quiz_master/views/home.dart';
import 'package:sg_quiz_master/views/java.dart';
import 'package:sg_quiz_master/views/signin.dart';
import 'package:sg_quiz_master/views/tanku.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignIn(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sg_quiz_master/services/auth.dart';

import 'package:sg_quiz_master/views/home.dart';
import 'package:sg_quiz_master/widgets/widgets.dart';
import 'package:sg_quiz_master/views/signin.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  String name, email, password;

  bool _isLoading = false;

  AuthServices authServices = new AuthServices();

  signUp() async {
    if (_formKey.currentState.validate()) {
      setState(() {
        _isLoading = true;
      });

      await authServices
          .signUpWithEmailandPassword(email, password)
          .then((val) {
        if (val != null) {
          setState(() {
            _isLoading = false;
          });
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Home()));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: appBar(context)),
        elevation: 0.0,
      ),
      body: _isLoading
          ? Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : Form(
              key: _formKey,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    TextFormField(
                      validator: (val) {
                        return val.isEmpty ? 'Enter Name' : null;
                      },
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(hintText: 'Name'),
                      onChanged: (val) {
                        name = val;
                      },
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      validator: (val) {
                        return val.isEmpty ? 'Enter Email Id' : null;
                      },
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(hintText: 'Email'),
                      onChanged: (val) {
                        email = val;
                      },
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      obscureText: true,
                      validator: (val) {
                        return val.isEmpty ? 'Enter password' : null;
                      },
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(hintText: 'password'),
                      onChanged: (val) {
                        password = val;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                        onTap: () {
                          signUp();
                        },
                        child: Bluebutton(context, 'sign Up')),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Already have an Account?",
                          style: TextStyle(fontSize: 16),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignIn()));
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                fontSize: 16,
                                decoration: TextDecoration.underline),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}

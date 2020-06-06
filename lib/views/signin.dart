import 'package:flutter/material.dart';
import 'package:sg_quiz_master/services/auth.dart';
import 'package:sg_quiz_master/views/signup.dart';
import 'package:sg_quiz_master/widgets/widgets.dart';

import 'home.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  String email, password;

  bool _isLoading = false;
  AuthServices authServices = new AuthServices();

  signIn() async {
    if (_formKey.currentState.validate()) {
      setState(() {
        _isLoading = true;
      });
      await authServices.signInEmailandPass(email, password).then((val) {
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
    return SafeArea(
      child: Scaffold(
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
                          return val.isEmpty ? 'Enter Email id' : null;
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
                            signIn();
                          },
                          child: Bluebutton(context, 'sign In')),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Don't have a account?",
                            style: TextStyle(fontSize: 16),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()));
                            },
                            child: Text(
                              "Sign Up",
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
      ),
    );
  }
}

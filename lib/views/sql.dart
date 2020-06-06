import 'package:flutter/material.dart';
import 'package:sg_quiz_master/views/tanku.dart';
import 'package:sg_quiz_master/widgets/widgets.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fade/fade.dart';
import 'package:nice_button/nice_button.dart';

final _firestore = Firestore.instance;
var slot;

int score = 0;

Color c1 = Colors.white70;
Color c2 = Colors.white70;
Color c3 = Colors.white70;
Color c4 = Colors.white70;
Color c5 = Colors.white70;
Color c6 = Colors.white70;
Color c7 = Colors.white70;
Color c8 = Colors.white70;
Color c9 = Colors.white70;
Color c10 = Colors.white70;
Color c11 = Colors.white70;
Color c12 = Colors.white70;
Color c13 = Colors.white70;
Color c14 = Colors.white70;
Color c15 = Colors.white70;
Color c16 = Colors.white70;
Color c17 = Colors.white70;
Color c18 = Colors.white70;
Color c19 = Colors.white70;
Color c20 = Colors.white70;

class sql extends StatefulWidget {
  @override
  _sqlState createState() => _sqlState();
}

class _sqlState extends State<sql> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.white,
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _firestore.collection('SQL').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          return ListView(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              //question1-------------------------------------------------------------------------------------------
              Container(
                height: 50,
                child: GradientCard(
                  gradient: Gradients.hotLinear,
                  shadowColor: Gradients.tameer.colors.last.withOpacity(0.25),
                  elevation: 8,
                  child: Center(
                    child: Text(
                      snapshot.data.documents[0]['ques1'].toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    if (snapshot.data.documents[0]['ans1'].toString() ==
                        snapshot.data.documents[0]['op1'].toString()) {
                      setState(() {
                        score++;
                      });
                    }
                    setState(() {
                      c1 = Colors.white10;
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: c1,
                    // elevation: 300,
                    child: Center(
                      child: Text(
                        snapshot.data.documents[0]['op1'].toString(),
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    if (snapshot.data.documents[0]['ans1'].toString() ==
                        snapshot.data.documents[0]['op2'].toString()) {
                      setState(() {
                        score++;
                      });
                    }
                    setState(() {
                      c2 = Colors.white10;
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: c2,
                    child: Center(
                      child: Text(
                        snapshot.data.documents[0]['op2'].toString(),
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    if (snapshot.data.documents[0]['ans1'].toString() ==
                        snapshot.data.documents[0]['op3'].toString()) {
                      setState(() {
                        score++;
                      });
                    }
                    setState(() {
                      c3 = Colors.white10;
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: c3,
                    // elevation: 300,
                    child: Center(
                      child: Text(
                        snapshot.data.documents[0]['op3'].toString(),
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    if (snapshot.data.documents[0]['ans1'].toString() ==
                        snapshot.data.documents[0]['op4'].toString()) {
                      setState(() {
                        score++;
                      });
                    }
                    setState(() {
                      c4 = Colors.white10;
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: c4,
                    //elevation: 300,
                    child: Center(
                      child: Text(
                        snapshot.data.documents[0]['op4'].toString(),
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),

              //Question2-----------------------------------------------------------------------------------------
              Container(
                height: 50,
                child: GradientCard(
                  gradient: Gradients.hotLinear,
                  shadowColor: Gradients.tameer.colors.last.withOpacity(0.25),
                  elevation: 8,
                  child: Center(
                    child: Text(
                      snapshot.data.documents[1]['ques2'].toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    if (snapshot.data.documents[1]['ans2'].toString() ==
                        snapshot.data.documents[1]['op1'].toString()) {
                      setState(() {
                        score++;
                      });
                    }
                    setState(() {
                      c5 = Colors.white10;
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: c5,
                    // elevation: 300,
                    child: Center(
                      child: Text(
                        snapshot.data.documents[1]['op1'].toString(),
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    if (snapshot.data.documents[1]['ans2'].toString() ==
                        snapshot.data.documents[1]['op2'].toString()) {
                      setState(() {
                        score++;
                      });
                    }
                    setState(() {
                      c6 = Colors.white10;
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: c6,
                    // elevation: 300,
                    child: Center(
                      child: Text(
                        snapshot.data.documents[1]['op2'].toString(),
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    if (snapshot.data.documents[1]['ans2'].toString() ==
                        snapshot.data.documents[1]['op3'].toString()) {
                      setState(() {
                        score++;
                      });
                    }
                    setState(() {
                      c7 = Colors.white10;
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: c7,
                    // elevation: 300,
                    child: Center(
                      child: Text(
                        snapshot.data.documents[1]['op3'].toString(),
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    if (snapshot.data.documents[1]['ans2'].toString() ==
                        snapshot.data.documents[1]['op4'].toString()) {
                      setState(() {
                        score++;
                      });
                    }
                    setState(() {
                      c8 = Colors.white10;
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: c8,
                    //elevation: 300,
                    child: Center(
                      child: Text(
                        snapshot.data.documents[1]['op4'].toString(),
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
              ),

              //Question3----------------------------------------------------------------------------------------
              Container(
                height: 50,
                child: GradientCard(
                  gradient: Gradients.hotLinear,
                  shadowColor: Gradients.tameer.colors.last.withOpacity(0.25),
                  elevation: 8,
                  //  margin: EdgeInsets.symmetric(horizontal: 20),

                  // elevation: 300,
                  child: Center(
                    child: Text(
                      snapshot.data.documents[2]['ques3'].toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    if (snapshot.data.documents[2]['ans3'].toString() ==
                        snapshot.data.documents[2]['op1'].toString()) {
                      setState(() {
                        score++;
                      });
                    }
                    setState(() {
                      c9 = Colors.white10;
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: c9,
                    // elevation: 300,
                    child: Center(
                      child: Text(
                        snapshot.data.documents[2]['op1'].toString(),
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    if (snapshot.data.documents[2]['ans3'].toString() ==
                        snapshot.data.documents[2]['op2'].toString()) {
                      setState(() {
                        score++;
                      });
                    }
                    setState(() {
                      c10 = Colors.white10;
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: c10,
                    // elevation: 300,
                    child: Center(
                      child: Text(
                        snapshot.data.documents[2]['op2'].toString(),
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    if (snapshot.data.documents[2]['ans3'].toString() ==
                        snapshot.data.documents[2]['op3'].toString()) {
                      setState(() {
                        score++;
                      });
                    }
                    setState(() {
                      c11 = Colors.white10;
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: c11,
                    // elevation: 300,
                    child: Center(
                      child: Text(
                        snapshot.data.documents[2]['op3'].toString(),
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    if (snapshot.data.documents[2]['ans3'].toString() ==
                        snapshot.data.documents[2]['op4'].toString()) {
                      setState(() {
                        score++;
                      });
                    }
                    setState(() {
                      c12 = Colors.white10;
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: c12,
                    //elevation: 300,
                    child: Center(
                      child: Text(
                        snapshot.data.documents[2]['op4'].toString(),
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
              ),

              //Question4----------------------------------------------------------------------------------
              Container(
                height: 50,
                child: GradientCard(
                  gradient: Gradients.hotLinear,
                  shadowColor: Gradients.tameer.colors.last.withOpacity(0.25),
                  elevation: 8,
                  //  margin: EdgeInsets.symmetric(horizontal: 20),

                  // elevation: 300,
                  child: Center(
                    child: Text(
                      snapshot.data.documents[3]['ques4'].toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    if (snapshot.data.documents[3]['ans4'].toString() ==
                        snapshot.data.documents[3]['op1'].toString()) {
                      setState(() {
                        score++;
                      });
                    }
                    setState(() {
                      c13 = Colors.white10;
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: c13,
                    // elevation: 300,
                    child: Center(
                      child: Text(
                        snapshot.data.documents[3]['op1'].toString(),
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    if (snapshot.data.documents[3]['ans4'].toString() ==
                        snapshot.data.documents[3]['op2'].toString()) {
                      setState(() {
                        score++;
                      });
                    }
                    setState(() {
                      c14 = Colors.white10;
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: c14,
                    // elevation: 300,
                    child: Center(
                      child: Text(
                        snapshot.data.documents[3]['op2'].toString(),
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    if (snapshot.data.documents[3]['ans4'].toString() ==
                        snapshot.data.documents[3]['op3'].toString()) {
                      setState(() {
                        score++;
                      });
                    }
                    setState(() {
                      c15 = Colors.white10;
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: c15,
                    // elevation: 300,
                    child: Center(
                      child: Text(
                        snapshot.data.documents[3]['op3'].toString(),
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    if (snapshot.data.documents[3]['ans4'].toString() ==
                        snapshot.data.documents[3]['op4'].toString()) {
                      setState(() {
                        score++;
                      });
                    }
                    setState(() {
                      c16 = Colors.white10;
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: c16,
                    //elevation: 300,
                    child: Center(
                      child: Text(
                        snapshot.data.documents[3]['op4'].toString(),
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              //question 5
              Container(
                height: 50,
                child: GradientCard(
                  gradient: Gradients.hotLinear,
                  shadowColor: Gradients.tameer.colors.last.withOpacity(0.25),
                  elevation: 8,
                  //  margin: EdgeInsets.symmetric(horizontal: 20),

                  // elevation: 300,
                  child: Center(
                    child: Text(
                      snapshot.data.documents[3]['ques5'].toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    if (snapshot.data.documents[4]['ans5'].toString() ==
                        snapshot.data.documents[4]['op1'].toString()) {
                      setState(() {
                        score++;
                      });
                    }
                    setState(() {
                      c17 = Colors.white10;
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: c17,
                    // elevation: 300,
                    child: Center(
                      child: Text(
                        snapshot.data.documents[4]['op1'].toString(),
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    if (snapshot.data.documents[4]['ans5'].toString() ==
                        snapshot.data.documents[4]['op2'].toString()) {
                      setState(() {
                        score++;
                      });
                    }
                    setState(() {
                      c18 = Colors.white10;
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: c18,
                    // elevation: 300,
                    child: Center(
                      child: Text(
                        snapshot.data.documents[4]['op2'].toString(),
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    if (snapshot.data.documents[4]['ans5'].toString() ==
                        snapshot.data.documents[4]['op3'].toString()) {
                      setState(() {
                        score++;
                      });
                    }
                    setState(() {
                      c19 = Colors.white10;
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: c19,
                    // elevation: 300,
                    child: Center(
                      child: Text(
                        snapshot.data.documents[4]['op3'].toString(),
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    if (snapshot.data.documents[4]['ans5'].toString() ==
                        snapshot.data.documents[4]['op4'].toString()) {
                      setState(() {
                        score++;
                      });
                    }
                    setState(() {
                      c20 = Colors.white10;
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: c20,
                    //elevation: 300,
                    child: Center(
                      child: Text(
                        snapshot.data.documents[4]['op4'].toString(),
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  onChanged: (val) {
                    slot = val;
                  },
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Enter slot'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              NiceButton(
                radius: 40,
                padding: const EdgeInsets.all(15),
                text: "Submit",
                gradientColors: [Color(0xff5b86e5), Color(0xff36d1dc)],
                onPressed: () {
                  Firestore.instance
                      .collection('results')
                      .document()
                      .setData({'score': score, 'slot': slot});
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Thank()));
                },
              ),
              SizedBox(
                height: 10,
              ),
            ],
          );
        },
      ),
    ));
  }
}

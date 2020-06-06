import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return Center(
    child: RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 22),
        children: <TextSpan>[
          TextSpan(
              text: 'SG',
              style: TextStyle(
                  fontWeight: FontWeight.w600, color: Colors.black87)),
          TextSpan(
              text: 'QuizMaster',
              style: TextStyle(fontWeight: FontWeight.w600, color: Colors.red)),
          //TextSpan(text: ' Master!'),
        ],
      ),
    ),
  );
}

Widget Bluebutton(BuildContext context, String text) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 16),
    decoration: BoxDecoration(
        color: Colors.red, borderRadius: BorderRadius.circular(32)),
    width: MediaQuery.of(context).size.width,
    alignment: Alignment.center,
    child: Text(
      text,
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
  );
}

import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  TextFieldContainer({this.child});

  final TextField child;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        height: 70.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Color(0XFF2196F3),
              offset: Offset(0, 10),
              blurRadius: 15.0,
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: child);
  }
}

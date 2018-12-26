import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  CustomButton(this.label);

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(onPressed: () {}, child: new Text(label));
  }
}

Widget build(BuildContext context) {
  return new Center(
    child: new CustomButton("Hello"),
  );
}

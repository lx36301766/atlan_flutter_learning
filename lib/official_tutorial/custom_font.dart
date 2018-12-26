import 'package:flutter/material.dart';

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Sample App"),
    ),
    body: Center(
      child: Text(
        'This is a custom font text',
        style: TextStyle(fontFamily: 'MyCustomFont'),
      ),
    ),
  );
}

// How do I style my Text widgets?
// Along with fonts, you can customize other styling elements on a Text widget. The style parameter of a Text widget takes a 
// TextStyle object, where you can customize many parameters, such as:

// color
// decoration
// decorationColor
// decorationStyle
// fontFamily
// fontSize
// fontStyle
// fontWeight
// hashCode
// height
// inherit
// letterSpacing
// textBaseline
// wordSpacing

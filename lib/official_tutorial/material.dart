import 'package:flutter/material.dart';

void main() => runApp(SampleApp());

class SampleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

//class _SampleAppPageState extends State<SampleAppPage> {
//  // Default placeholder text
//  String textToShow = "I Like Flutter";
//
//  void _updateText() {
//    setState(() {
//      // update the text
//      textToShow = "Flutter is 456465!";
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Sample App"),
//      ),
//      body: Center(
////          child: Text(textToShow)),
////        floatingActionButton: FloatingActionButton(
////        onPressed: _updateText,
////        tooltip: 'Update Text',
////        child: Icon(Icons.update),
//
//          child: MaterialButton(
//            onPressed: () {},
//            child: Text('Hello'),
//            padding: EdgeInsets.only(left: 10.0, right: 10.0),
//          ),
//      ),
//    );
//  }
//
//}

class _SampleAppPageState extends State<SampleAppPage> {
  // Default value for toggle
  bool toggle = true;
  void _toggle() {
    setState(() {
      toggle = !toggle;
    });
  }

  _getToggleChild() {
    if (toggle) {
      return Text('Toggle One');
    } else {
      return MaterialButton(onPressed: () {}, child: Text('Toggle Two'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: Center(
        child: _getToggleChild(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggle,
        tooltip: 'Update Text',
        child: Icon(Icons.update),
      ),
    );
  }
}
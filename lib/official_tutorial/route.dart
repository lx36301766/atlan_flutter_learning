import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new SampleAppPage(), // becomes the route named '/'
    routes: <String, WidgetBuilder> {
      '/a': (BuildContext context) => new MaterialApp(title: 'page A'),
      '/b': (BuildContext context) => new MaterialApp(title: 'page B'),
      '/c': (BuildContext context) => new MaterialApp(title: 'page C'),
    },
  ));
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  // Default placeholder text
  String textToShow = "I Like Flutter";

  void _updateText() {
    setState(() {
      // update the text
      textToShow = "Flutter is 456465!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: Center(
//          child: Text(textToShow)),
//        floatingActionButton: FloatingActionButton(
//        onPressed: _updateText,
//        tooltip: 'Update Text',
//        child: Icon(Icons.update),

          child: MaterialButton(
            onPressed: () {},
            child: Text('Hello'),
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
          ),
      ),
    );
  }

}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


//  package com.yourcompany.shared;
//
//  import android.content.Intent;
//  import android.os.Bundle;
//
//  import java.nio.ByteBuffer;
//
//  import io.flutter.app.FlutterActivity;
//  import io.flutter.plugin.common.ActivityLifecycleListener;
//  import io.flutter.plugin.common.MethodCall;
//  import io.flutter.plugin.common.MethodChannel;
//  import io.flutter.plugins.GeneratedPluginRegistrant;
//
//  public class MainActivity extends FlutterActivity {
//    String sharedText;
//
//    @Override
//    protected void onCreate(Bundle savedInstanceState) {
//      super.onCreate(savedInstanceState);
//      GeneratedPluginRegistrant.registerWith(this);
//      Intent intent = getIntent();
//      String action = intent.getAction();
//      String type = intent.getType();
//
//      if (Intent.ACTION_SEND.equals(action) && type != null) {
//        if ("text/plain".equals(type)) {
//          handleSendText(intent); // Handle text being sent
//        }
//      }
//
//      new MethodChannel(getFlutterView(), "app.channel.shared.data").setMethodCallHandler(new MethodChannel.MethodCallHandler() {
//        @Override
//        public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
//          if (methodCall.method.contentEquals("getSharedText")) {
//            result.success(sharedText);
//            sharedText = null;
//          }
//        }
//      });
//    }
//
//
//    void handleSendText(Intent intent) {
//      sharedText = intent.getStringExtra(Intent.EXTRA_TEXT);
//    }
//  }

void main() {
  runApp(new SampleApp());
}

class SampleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Sample Shared App Handler',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => new _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {

  static const platform = const MethodChannel('app.channel.shared.data');

  String dataShared = "No data";

  @override
  void initState() {
    super.initState();
    getSharedText();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: new Center(child: new Text(dataShared)));
  }

  getSharedText() async {
    var sharedData = await platform.invokeMethod("getSharedText");
    if (sharedData != null) {
      setState(() {
        dataShared = sharedData;
      });
    }
  }
}
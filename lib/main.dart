import 'package:demo_20230928/webview_example.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      body: Column(
        children: [
          Expanded(child: WebViewExample()),
          SizedBox(
            width: 200,
            height: 200,
            child: AndroidView(
              viewType: '<platform-view-type>',
              layoutDirection: TextDirection.ltr,
              creationParams: {},
              creationParamsCodec: StandardMessageCodec(),
            ),
          )
        ],
      ),
    ));
  }
}

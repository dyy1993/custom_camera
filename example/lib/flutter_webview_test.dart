import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TestWebView extends StatelessWidget {
  const TestWebView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Container(child: Builder(
        builder: (context) {
          return WebView(
            initialUrl: 'https://www.baidu.com',
          );
        },
      )),
    );
  }
}

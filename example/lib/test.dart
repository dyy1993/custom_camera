import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TestWebView extends StatelessWidget {
  const TestWebView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Container(
        child: WebView(
          initialUrl:
              'https://www.baidu.com',
        ),
      ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class HelpScreen extends StatefulWidget {
  HelpScreen({Key key, this.title}) : super(key: key);
  final String title;
  @override
  HelpScreenState createState() {
    return HelpScreenState();
  }
}

class HelpScreenState extends State<HelpScreen> {
  WebViewPlusController _controller;

  String getHtmlString() {
    return r"""
           <html lang="en">
            <body>hello world</body>
           </html>
      """;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Hypertension & Diabetes Screening',
      )),
      // body: WebViewPlus(
      //   initialUrl: 'about:blank',
      //   javascriptMode: JavascriptMode.unrestricted,
      //   onWebViewCreated: (WebViewPlusController webViewController) {
      //     _controller = webViewController;
      //     _loadHtmlFromAssets();
      //   },
      // ),
      //   body: Column(
      //     children: [
      //       Text('Heeee'),
      //       Container(
      //         height: 10000,
      //         child: WebViewPlus(
      //           javascriptMode: JavascriptMode.unrestricted,
      //           gestureNavigationEnabled: true,
      //           onWebViewCreated: (controller) {
      //             controller.loadUrl('assets/index.html');
      //           },
      //         ),
      //       ),
      //       Text('Heeee'),
      //     ],
      //     //child:
      //   ),
      // );
      body: WebViewPlus(
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) {
          controller.loadString(r"""
           <html lang="en">
            <body>hello world</body>
           </html>
      """);
        },
      ),
    );
  }

  // _loadHtmlFromAssets() async {
  //   String fileText = await rootBundle.loadString('./assets/index.html');
  //   _controller.loadUrl( Uri.dataFromString(
  //       fileText,
  //       mimeType: 'text/html',
  //       encoding: Encoding.getByName('utf-8')
  //   ).toString());
  // }
}

import 'package:flutter/material.dart';
import 'package:heathyent/models/quiz.dart';
import 'package:heathyent/screens/webview/ayout.dart';
import 'package:heathyent/screens/webview/layout.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class WebScreen extends StatelessWidget {
  const WebScreen(
      {Key key,
      this.questionData,
      this.index,
      this.controller,
      this.title,
      this.courseModule})
      : super(key: key);
  final Quiz questionData;
  final int index;
  final String title;
  final WebViewPlusController controller;
  final int courseModule;

  @override
  Widget build(BuildContext context) {
    double _height = 2000;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: _height,
            child: WebViewPlus(
              onWebViewCreated: (controller) {
                //this.controller = controller;
                //controller.loadUrl('assets/index.html');
                controller.loadString(getHtml(
                    _returnHtml(), courseModule, questionData.attempt.id));
              },
              // onPageFinished: (url) {
              //   _controller.getWebviewPlusHeight().then((double height) {
              //     print("Height:  " + height.toString());
              //     setState(() {
              //       _height = height;
              //     });
              //   });
              // },
              javascriptMode: JavascriptMode.unrestricted,
            ),
          )
        ],
      ),
    );
  }

  _returnHtml() {
    int length = questionData.questions.length;

    List<QuizQuestion> questions = questionData.questions;
    String html;

    for (var x = 0; x <= length - 1; x++) {
      List<String> htm = [];
      //String html = _html.questions[x].html + _html.questions[++x].html;
      // var ht = questionData.questions[x].html;
      // html += ht;
      html = questionData.questions[0].html +
          questionData.questions[1].html +
          questionData.questions[2].html +
          questionData.questions[3].html;
      // String combinedhtml = ;
      // return combinedhtml;
      //htm.add(html);
      //print(conc);
      //debugPrint("$htm");
      //return htm.sublist(0);
      //return html;
    }

    // for (var u in questions) {
    //   print(u.html);
    //   html = u.html + u.html;
    //   //return u.html;
    // }
    return html;
  }

  _recursive() {
    int length = questionData.questions.length;
    for (var x = 0; x < length; x++) {
      if (x == length - 1) {
        return questionData.questions[length - 1].html;
      } else {
        return questionData.questions[x].html;
      }
    }
  }

  _add() {
    List<Map<String, int>> data = [
      {"number": 1},
      {"number": 2}
    ];
    int length = questionData.questions.length;
    int sum = 0;
    for (var x = 0; x < data.length; x++) {
      //return html += questionData.questions[x].html;
      print(sum += data[x]['number']);
    }
  }

  // _concat() {
  //   List<QuizQuestion> data = questionData.questions;

  //   int length = questionData.questions.length;
  //   String html = '';
  //   for (var x = 0; x <= data.length - 1; x++) {
  //     return html += questionData.questions[x].html;
  //     // if (x < length) {
  //     //   html += questionData.questions[x].html;
  //     // }
  //     // return html;
  //   }
  // }

  _concat() {
    String html = '';
    var a = 0;
    var max = questionData.questions.length - 1;
    while (a < max) {
      html += questionData.questions[a].html;
    }
    //return html;
    print(html);
  }
}

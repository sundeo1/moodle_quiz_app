import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:heathyent/screens/webview/web.dart';
import 'package:heathyent/screens/webview/webview.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';
import 'package:heathyent/services/services_he.dart';

class MyQuizPage extends StatefulWidget {
  MyQuizPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyQuizPageState createState() => _MyQuizPageState();
}

class _MyQuizPageState extends State<MyQuizPage> {
  WebViewPlusController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: Card(
            child: FutureBuilder(
                future: getQuizzesByCourses(),
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return Container(
                      child: Center(
                        child: Text('Loading...'),
                      ),
                    );
                  } else
                    return ListView.builder(
                        padding: const EdgeInsets.all(10.0),
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          //if (index.isOdd) return Divider();
                          //return Text(snapshot.data[index].fullname);
                          return ListTile(
                            title: Text(
                              snapshot.data[index]["name"],
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                            // subtitle: Text(
                            //   snapshot.data[index]["intro"],
                            //   style: TextStyle(
                            //     fontSize: 14.0,
                            //   ),
                            // subtitle: WebViewPlus(
                            //   onWebViewCreated: (controller) {
                            //     this._controller = controller;
                            //     //controller.loadUrl('assets/index.html');
                            //     controller
                            //         .loadString(snapshot.data[index]["intro"]);
                            //   },
                            // ),
                            subtitle: Html(
                              data: snapshot.data[index]["intro"],
                            ),
                            trailing: ElevatedButton(
                              //onPressed: () => Get.to(WebViewScreen()),
                              onPressed: () {
                                startAttempt(snapshot.data[index]["id"])
                                    .then((value) => Get.to(WebScreen(
                                          questionData: value,
                                          index: index,
                                          title: snapshot.data[index]["name"],
                                          courseModule: snapshot.data[index]
                                              ["coursemodule"],
                                        )));
                              },
                              child: Text("Answer Quiz"),
                            ),
                          );
                        });
                }),
          ),
        ));
  }
}

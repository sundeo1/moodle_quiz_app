import 'package:flutter/material.dart';
import 'package:heathyent/models/quiz.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

import 'layout.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({Key key, this.questionData, this.index})
      : super(key: key);
  final Quiz questionData;
  final int index;
  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  WebViewPlusController _controller;
  double _height = 2000;
  Quiz _html;
  String _questions =
      """<div id="question-26-1" class="que multichoice deferredfeedback answersaved"><div class="info"><h3 class="no">Question <span class="qno">1</span></h3><div class="state">Answer saved</div><div class="grade">Marked out of 5.00</div><div class="questionflag editable" aria-atomic="true" aria-relevant="text" aria-live="assertive"><input type="hidden" name="q26:1_:flagged" value="0" /><input type="checkbox" id="q26:1_:flaggedcheckbox" name="q26:1_:flagged" value="1" /><input type="hidden" value="qaid=77&amp;qubaid=26&amp;qid=4&amp;slot=1&amp;checksum=573b904e8a18607f0dd527be3a395573&amp;sesskey=NQthwCljUR&amp;newstate=" class="questionflagpostdata" /><label id="q26:1_:flaggedlabel" for="q26:1_:flaggedcheckbox"><img src="http://sundeo.pagekite.me/theme/image.php/boost/core/1633508390/i/unflagged" alt="Not flagged" class="questionflagimage" id="q26:1_:flaggedimg" /><span>Flag question</span></label>
</div></div><div class="content"><div class="formulation clearfix"><h4 class="accesshide">Question text</h4><input type="hidden" name="q26:1_:sequencecheck" value="1" /><div class="qtext"><p dir="ltr" style="text-align: left;">The following is an operating system</p></div><div class="ablock no-overflow visual-scroll-x"><div class="answer"><div class="r0"><input type="radio" name="q26:1_answer" value="0" id="q26:1_answer0" aria-labelledby="q26:1_answer0_label" /><div class="d-flex w-100" id="q26:1_answer0_label" data-region="answer-label"><span class="answernumber">a. </span><div class="flex-fill ml-1"><p dir="ltr" style="text-align: left;">Windows</p></div></div> </div>
<div class="r1"><input type="radio" name="q26:1_answer" value="1" id="q26:1_answer1" aria-labelledby="q26:1_answer1_label" /><div class="d-flex w-100" id="q26:1_answer1_label" data-region="answer-label"><span class="answernumber">b. </span><div class="flex-fill ml-1"><p dir="ltr" style="text-align: left;">Goat</p></div></div> </div>
<div class="r0"><input type="radio" name="q26:1_answer" value="2" id="q26:1_answer2" aria-labelledby="q26:1_answer2_label" /><div class="d-flex w-100" id="q26:1_answer2_label" data-region="answer-label"><span class="answernumber">c. </span><div class="flex-fill ml-1"><p dir="ltr" style="text-align: left;">System Unit</p></div></div> </div>
<div class="r1"><input type="radio" name="q26:1_answer" value="3" id="q26:1_answer3" aria-labelledby="q26:1_answer3_label" checked="checked" /><div class="d-flex w-100" id="q26:1_answer3_label" data-region="answer-label"><span class="answernumber">d. </span><div class="flex-fill ml-1"><p dir="ltr" style="text-align: left;">Monitor</p></div></div> </div>
</div><div id="q26:1_clearchoice" class="qtype_multichoice_clearchoice"><input type="radio" name="q26:1_answer" id="q26:1_answer-1" value="-1" class="sr-only" aria-hidden="true" /><label for="q26:1_answer-1"><a tabindex="0" role="button" class="btn btn-link ml-3 mt-n1 mb-n1" href="#">Clear my choice</a></label></div></div></div></div></div><div id="question-26-2" class="que truefalse deferredfeedback answersaved"><div class="info"><h3 class="no">Question <span class="qno">2</span></h3><div class="state">Answer saved</div><div class="grade">Marked out of 5.00</div><div class="questionflag editable" aria-atomic="true" aria-relevant="text" aria-live="assertive"><input type="hidden" name="q26:2_:flagged" value="0" /><input type="checkbox" id="q26:2_:flaggedcheckbox" name="q26:2_:flagged" value="1" /><input type="hidden" value="qaid=78&amp;qubaid=26&amp;qid=5&amp;slot=2&amp;checksum=e4029aab8ba233ea7a834ea44f59712f&amp;sesskey=NQthwCljUR&amp;newstate=" class="questionflagpostdata" /><label id="q26:2_:flaggedlabel" for="q26:2_:flaggedcheckbox"><img src="http://sundeo.pagekite.me/theme/image.php/boost/core/1633508390/i/unflagged" alt="Not flagged" class="questionflagimage" id="q26:2_:flaggedimg" /><span>Flag question</span></label>
</div></div><div class="content"><div class="formulation clearfix"><h4 class="accesshide">Question text</h4><input type="hidden" name="q26:2_:sequencecheck" value="1" /><div class="qtext"><p dir="ltr" style="text-align: left;">Operating system is a hardware</p></div><div class="ablock"><div class="prompt">Select one:</div><div class="answer"><div class="r0"><input type="radio" name="q26:2_answer" value="1" id="q26:2_answertrue" /><label for="q26:2_answertrue" class="ml-1">True</label> </div><div class="r1"><input type="radio" name="q26:2_answer" value="0" id="q26:2_answerfalse" checked="checked" /><label for="q26:2_answerfalse" class="ml-1">False</label> </div></div></div></div></div></div><div id="question-26-3" class="que truefalse deferredfeedback notyetanswered"><div class="info"><h3 class="no">Question <span class="qno">3</span></h3><div class="state">Not yet answered</div><div class="grade">Marked out of 5.00</div><div class="questionflag editable" aria-atomic="true" aria-relevant="text" aria-live="assertive"><input type="hidden" name="q26:3_:flagged" value="0" /><input type="checkbox" id="q26:3_:flaggedcheckbox" name="q26:3_:flagged" value="1" /><input type="hidden" value="qaid=79&amp;qubaid=26&amp;qid=6&amp;slot=3&amp;checksum=519ad3d9945b98f1ddc2304e008a9cae&amp;sesskey=NQthwCljUR&amp;newstate=" class="questionflagpostdata" /><label id="q26:3_:flaggedlabel" for="q26:3_:flaggedcheckbox"><img src="http://sundeo.pagekite.me/theme/image.php/boost/core/1633508390/i/unflagged" alt="Not flagged" class="questionflagimage" id="q26:3_:flaggedimg" /><span>Flag question</span></label>
</div></div><div class="content"><div class="formulation clearfix"><h4 class="accesshide">Question text</h4><input type="hidden" name="q26:3_:sequencecheck" value="1" /><div class="qtext"><p dir="ltr" style="text-align: left;">Operating System is a software<br></p></div><div class="ablock"><div class="prompt">Select one:</div><div class="answer"><div class="r0"><input type="radio" name="q26:3_answer" value="1" id="q26:3_answertrue" /><label for="q26:3_answertrue" class="ml-1">True</label> </div><div class="r1"><input type="radio" name="q26:3_answer" value="0" id="q26:3_answerfalse" /><label for="q26:3_answerfalse" class="ml-1">False</label> </div></div></div></div></div></div>""";

  @override
  void initState() {
    super.initState();
    _html = widget.questionData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Example'),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: _height,
            child: WebViewPlus(
              onWebViewCreated: (controller) {
                this._controller = controller;
                //controller.loadUrl('assets/index.html');
                controller.loadString(
                    // getHtmlString(_html.questions[widget.index].html));
                    getHtmlString(_returnHtml(), widget.index));
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
    int length = _html.questions.length;

    List<QuizQuestion> questions = _html.questions;
    String html;

    for (var x = 0; x < length; x++) {
      List<String> htm = [];
      //String html = _html.questions[x].html + _html.questions[++x].html;
      html = _html.questions[0].html +
          _html.questions[1].html +
          _html.questions[2].html;
      // String combinedhtml = ;
      // return combinedhtml;
      htm.add(html);
      //print(conc);
      debugPrint("$htm");
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
}

import 'dart:convert';
import 'package:flutter/material.dart';

class DynamicForm extends StatefulWidget {
  const DynamicForm({Key key}) : super(key: key);

  @override
  _DynamicFormState createState() => _DynamicFormState();
}

enum Answer { yes, no }

class _DynamicFormState extends State<DynamicForm> {
  //Answer _option = Answer.yes;
  String _option;
  int _count;
  int _value;
  String _result;
  List<Map<String, dynamic>> _values;

  @override
  void initState() {
    super.initState();
    _count = 0;
    _result = '';
    _values = [];
    _option = null;
    _value = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic Form'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () async {
              setState(() {
                _count++;
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () async {
              setState(() {
                _count = 0;
                _result = '';
                _values = [];
              });
            },
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Flexible(
              // child: ListView.builder(
              //     shrinkWrap: true,
              //     itemCount: _count,
              //     itemBuilder: (context, index) {
              //       return _radio(index);
              //     }),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('1: Name'),
                      SizedBox(width: 30),
                      Expanded(
                        child: TextFormField(
                          onChanged: (val) {
                            _onUpdate(1, val);
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('2: Do you Drink?'),
                      SizedBox(width: 30),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              title: const Text('Yes'),
                              leading: Radio(
                                value: 'Yes',
                                groupValue: _option,
                                onChanged: (value) {
                                  // setState(() {
                                  //   _option = value;
                                  // });
                                  _onUpdate(2, value);
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text('No'),
                              leading: Radio(
                                value: 'No',
                                groupValue: _option,
                                onChanged: (value) {
                                  // setState(() {
                                  //   _option = value;
                                  // });
                                  _onUpdate(2, value);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(_result),
          ],
        ),
      ),
    );
  }

  _row(int key) {
    return Row(
      children: [
        Text('ID: $key'),
        SizedBox(width: 30),
        Expanded(
          child: TextFormField(
            onChanged: (val) {
              _onUpdate(key, val);
            },
          ),
        ),
      ],
    );
  }

  // _radio(int key) {
  //   return Row(
  //     children: [
  //       Text('ID: $key'),
  //       SizedBox(width: 30),
  //       Expanded(
  //         child: Column(
  //           children: <Widget>[
  //             for (int i = 1; i <= 2; i++)
  //               ListTile(
  //                 title: Text(
  //                   'Radio $i',
  //                   style: Theme.of(context).textTheme.subtitle1.copyWith(
  //                       color: i == 5 ? Colors.black38 : Colors.black),
  //                 ),
  //                 leading: Radio(
  //                   value: i,
  //                   groupValue: _value,
  //                   activeColor: Color(0xFF6200EE),
  //                   onChanged: i == 5
  //                       ? null
  //                       : (int value) {
  //                           // setState(() {
  //                           //   _value = value;
  //                           // });
  //                           _onUpdate(key, value);
  //                         },
  //                 ),
  //               ),
  //           ],
  //         ),
  //       ),
  //     ],
  //   );
  // }

  _radio(int key) {
    return Row(
      children: [
        Text('ID: $key'),
        SizedBox(width: 30),
        Expanded(
          child: Column(
            children: <Widget>[
              ListTile(
                title: const Text('Yes'),
                leading: Radio(
                  value: 'Yes',
                  groupValue: _option,
                  onChanged: (value) {
                    // setState(() {
                    //   _option = value;
                    // });
                    _onUpdate(key, value);
                  },
                ),
              ),
              ListTile(
                title: const Text('No'),
                leading: Radio(
                  value: 'No',
                  groupValue: _option,
                  onChanged: (value) {
                    // setState(() {
                    //   _option = value;
                    // });
                    _onUpdate(key, value);
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  //A function that picks form field values, appends a key to it to create a map
  //then adds teach map to _values, which a list of maps
  _onUpdate(int key, val) {
    //Initially _value is being updated when ever a new character is typed in form field with duplicate keys,
    //We, want to change that so that it's only updated. We do this by removing duplicate key and only adding it once
    int foundKey = -1;
    for (var map in _values) {
      if (map.containsKey('id')) {
        if (map['id'] == key) {
          foundKey = key;
          break;
        }
      }
    }

    if (-1 != foundKey) {
      _values.removeWhere((map) {
        return map['id'] == foundKey;
      });
    }
    Map<String, dynamic> json = {'id': key, 'value': val};
    _values.add(json);
    setState(() {
      //_result = _values.toString();
      _result = _prettyPrint(_values);
    });
  }

  //A function that takes in a list or map and returns a nicely json encoded list or map
  String _prettyPrint(jsonObject) {
    var encoder = JsonEncoder.withIndent('  ');
    return encoder.convert(jsonObject);
  }
}

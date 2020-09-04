import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GraphScreen extends StatefulWidget {
  @override
  _GraphScreenState createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  @override
  Widget build(BuildContext context) {

    Widget text_detail = Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 150,
        width: 300,
        color: Colors.lightBlueAccent,
      ),
    );

    Widget graph_detail = Padding(
      padding: EdgeInsets.fromLTRB(0.0,20.0, 0.0, 0.0),
      child: Container(
        height: 300,
        width: 300,
        color: Colors.lightBlueAccent,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Graph'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                text_detail,
                graph_detail,
              ],
            )
          ],
        ),
      )
    );
  }

}

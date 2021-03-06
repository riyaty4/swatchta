import 'package:flutter/material.dart';
import 'package:flutterappp/Home/marker_fetch.dart';
import 'package:flutterappp/Models/area_model.dart';
import 'package:flutterappp/Services/database_map.dart';
import 'package:provider/provider.dart';

class MapScreen extends StatefulWidget {
  String area;

  MapScreen(this.area);
  @override

  _MapScreenState createState() {

    return _MapScreenState(this.area);
  }
}

class _MapScreenState extends State<MapScreen> {

  String area;
  _MapScreenState(this.area);
  @override

  Widget build(BuildContext context) {

    return StreamProvider<List<SewerInfo>>.value(
      value: DatabaseServiceMap(this.area).location,
      child: Scaffold(
        appBar: AppBar(
          title : Text(
            'Map',
          )
        ),

        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height - 50.0,
              width: MediaQuery.of(context).size.width,
              child: MapMarker(),

            )

          ],
        ),

      ),
    );


  }



}

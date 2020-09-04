import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappp/Home/area_tile.dart';
import 'package:flutterappp/Models/area_model.dart';
import 'package:provider/provider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class UserMapMarker extends StatefulWidget {

  @override

  _MapMarkerState createState() => _MapMarkerState();
}

class _MapMarkerState extends State<UserMapMarker> {

  List<Marker> allMarker = [];
  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {

    final marker = Provider.of<List<SewerInfo>>(context);

    void _showModalBottomSheet(MarkerId id){
      //print(id);
      //print(id.runtimeType);
      //print(id.value.runtimeType);
      marker.forEach((map) {
        if(id.value  == map.id)
          showModalBottomSheet(
              context: context,
              builder: (builder){
                return Container(
                    height: 200.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                        color: Colors.white
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                      child: ListView(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Padding
                                ( padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                                  child: Text(
                                    map.place,
                                    style: Theme.of(context).textTheme.title,
                                  )
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.remove_circle,
                                      color: Colors.lightBlueAccent,
                                    ),
                                    SizedBox(
                                      width: 7.0,
                                    ),
                                    Text(
                                      "Manhole No : ",
                                      style: Theme.of(context).textTheme.display2,
                                    ),
                                    Text(
                                      map.id,
                                      style: Theme.of(context).textTheme.display2,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.trending_up,
                                        color: Colors.lightBlueAccent,
                                      ),
                                      SizedBox(
                                        width: 7.0,
                                      ),
                                      Text(
                                        "Level : ",
                                        style: Theme.of(context).textTheme.display2,
                                      ),
                                      Text(
                                        map.level.toString(),
                                        style: Theme.of(context).textTheme.display2,
                                      )
                                    ],
                                  )
                              )
                            ],
                          )
                        ],
                      ),
                    )

                );
              }
          );

      });

    }

    marker.forEach((map)
    {
      final markerId = MarkerId(map.id);
      allMarker.add(Marker(
        markerId: markerId,
        draggable: true,
        infoWindow: InfoWindow(
          //title: map.place
          title: map.location,
          // snippet: map.level.toString(),
        ),

        position: LatLng(map.latitude,map.longitude),
        //zIndex: 0.0,
        onTap: () {
          _showModalBottomSheet(markerId);
        },

      )
      );
    });
    return Stack(
      children: <Widget>[
        Container(
           height: 200,
            //width: double.infinity,
            child: GoogleMap(
              tiltGesturesEnabled: false,
              zoomControlsEnabled: true,
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                target: LatLng(28.7041,77.1025),
                //target: LatLng(20.5937,78.9629),
                zoom: 11.0,

              ),
              markers: Set.from(allMarker),
              onMapCreated: mapController,
            )
        ),
      Padding(
        padding: const EdgeInsets.only(top: 210.0),
        child: ListView.builder(
          itemCount: marker.length,
          itemBuilder: (context , index) {
            return AreaTile(info : marker[index]);
           },
        ),
      ),
      ],
    );

      /*children: <Widget>[
        Column(
          children: <Widget>[


                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    height: 70,
                    width: double.infinity,
                    color: Colors.lightBlueAccent,
                  ),


          ],
        ),
      ],*/
  }

  void mapController(GoogleMapController controller){
    _controller.complete(controller);
  }


}

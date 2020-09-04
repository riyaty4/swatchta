import 'package:flutter/material.dart';
import 'package:flutterappp/Models/area_model.dart';

class AreaTile extends StatefulWidget {
  final SewerInfo info;
  AreaTile({ this.info });
  @override
  _AreaTileState createState() {
    return _AreaTileState(info);
  }
}

class _AreaTileState extends State<AreaTile> {
  SewerInfo info;
  _AreaTileState(this.info);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
       child: ListTile(
           leading: Icon(
             Icons.location_on,
             color: info.level < 4 ? Colors.red : Colors.green,
            size: 30,
            //backgroundColor: Colors.brown[brew.strength],
           ),
          title : Text(info.location),
          subtitle: info.level < 4 ?
          Text('Clog Found',style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500),):
          Text(' No clog', style: TextStyle(color: Colors.green , fontWeight: FontWeight.w500),),
           trailing: Icon(
           Icons.equalizer,
             size: 30,
             color: Colors.lightBlueAccent,
           ),
         onTap: (){
           Navigator.pushNamed(context, '/GraphScreen');
         },
        ),
      ),
    );
  }
}

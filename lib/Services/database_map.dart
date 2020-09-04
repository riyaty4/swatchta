import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutterappp/Models/area_model.dart';


class DatabaseServiceMap {

  String area;

  DatabaseServiceMap(this.area);

  CollectionReference block()
  {
    CollectionReference locCollection;
    if(area == 'kashmiri gate' || area == 'Kashmiri gate' || area == 'Kashmiri Gate')
      locCollection = Firestore.instance.collection('kashmiri gate');

    if(area == 'dhaula kuan')
      locCollection = Firestore.instance.collection('dhaula kuan');

    if(area == 'Mahipalpur')
      locCollection = Firestore.instance.collection('Mahipalpur');

    return locCollection;
  }

  //location list from snapshot
  List<SewerInfo> _locationListFromSnapshot(QuerySnapshot snapshot){
    return snapshot.documents.map((doc){
      return SewerInfo(
        level: doc.data['level'] ?? '',
        id : doc.data['id'] ?? '',
        place: doc.data['area'],
        latitude: doc.data['Coordinates'].latitude,
        longitude: doc.data['Coordinates'].longitude,
        location: doc.data['location'] ?? ' ',

      );
    }).toList();
  }

  //get location stream
  Stream<List<SewerInfo> > get location {
    return block().snapshots()
        .map(_locationListFromSnapshot);
  }

}
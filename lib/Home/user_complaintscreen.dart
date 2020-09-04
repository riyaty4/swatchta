import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutterappp/Home/map.dart';
import 'package:flutterappp/Home/user_complaintform.dart';

class UserComplaintScreen extends StatefulWidget {
  static const String id = 'logo';

  @override
  UserComplaintScreenState createState() => UserComplaintScreenState();
}

class UserComplaintScreenState extends State<UserComplaintScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        // Write some code to control things, when user press Back navigation button in device navigationBar
        moveToLastScreen();
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,

          title: Text(
            'Complaints',
            style: TextStyle(
              fontSize: 22.0,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),

          backgroundColor: Colors.lightBlue[400],

          // elevation: 100.0,

          //   brightness: Brightness.dark,
        ),
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
            child: Center(
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(1.0),

//                padding: EdgeInsets.symmetric(horizontal: 24.0),

                    child: Center(
                      child: Column(
//                  mainAxisAlignment: MainAxisAlignment.center,

                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        crossAxisAlignment: CrossAxisAlignment.stretch,

                        children: <Widget>[
                          Card(
                            margin: EdgeInsets.all(8),
//                      borderOnForeground: true,
                            elevation: 5.0,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                      'problem of an overflowing manhole at ISBT Metro Station Gate no. -3 , which is further leading to blockagein the manhole in front of my shop just opposite themetro station.pleae see to this problem as soon as possible '),
                                ),
                                SizedBox(height: 20.0),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      RaisedButton(
                                        color: Colors.grey[150],
                                        child: Text('View'),
                                        onPressed: () {},
                                      ),
                                      SizedBox(width: 10.0),
                                      RaisedButton(
                                        padding: const EdgeInsets.all(10.0),
                                        color: Colors.grey[150],
                                        child: Text('Close'),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            margin: EdgeInsets.all(8),
//                      borderOnForeground: true,
                            elevation: 5.0,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                      'problem of an overflowing manhole at ISBT Metro Station Gate no. -3 , '),
                                ),
                                SizedBox(height: 20.0),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      RaisedButton(
                                        color: Colors.grey[150],
                                        child: Text('View'),
                                        onPressed: () {},
                                      ),
                                      SizedBox(width: 10.0),
                                      RaisedButton(
                                        padding: const EdgeInsets.all(10.0),
                                        color: Colors.grey[150],
                                        child: Text('Close'),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Card(
                            elevation: 5.0,
                            margin: EdgeInsets.all(8),
//                        decoration: BoxDecoration(
//                            borderRadius: BorderRadius.circular(5.0),
//                            color: Colors.white,
//                            boxShadow: [
//                              BoxShadow(color: Colors.grey,
//                                  offset: Offset(2.0,2.0))
//                            ]

                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                      'The manhole reading of the manhole -i that is the main manhole at kashmiri gate is showing 90 percent water level kindly see to it and take the necessary action '),
                                ),
                                SizedBox(height: 10.0),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      RaisedButton(
                                        color: Colors.grey[150],
                                        child: Text('View'),
                                        onPressed: () {},
                                      ),
                                      SizedBox(width: 10.0),
                                      RaisedButton(
                                        color: Colors.grey[150],
                                        child: Text('Close'),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
//               child: Align(alignment: FractionalOffset.bottomCenter),
                    child: RaisedButton(
                      color: Colors.lightBlueAccent,
                      child: Text('Write Complaint'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ComplaintForm()));
                      },
                    ),
                  )
                ],
              ),

//                Container(
//
////               child: Align(alignment: FractionalOffset.bottomCenter),
//                  child:RaisedButton(color:Colors.lightBlueAccent,child: Text('Write Complaint'),
//                    onPressed: (){
//
//                    },),
//                )
            )),
      ),
    );

//          ),

//        );

//      ),

//    );
  }

  void moveToLastScreen() {
    Navigator.pop(context, true);
  }

  void navigateToDetail(String area) async {
    await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return MapScreen(area);
    }));
  }
}

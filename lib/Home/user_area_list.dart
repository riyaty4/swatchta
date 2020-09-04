import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutterappp/Home/map.dart';
import 'package:flutterappp/Home/user_homeScreen.dart';

//import 'rounded_button.dart';

//import 'package:sewerappp/authentication/login_screen.dart';

//import 'package:sewerappp/authentication/registration_screen.dart';


class UserMapList extends StatefulWidget {

  @override

  _Map_listState createState() => _Map_listState();

}



class _Map_listState extends State<UserMapList> {

  @override

  Widget build(BuildContext context) {

    return WillPopScope(

      onWillPop: () {
        // Write some code to control things, when user press Back navigation button in device navigationBar
        moveToLastScreen();
      },

      child: Scaffold(

        appBar: AppBar(


          automaticallyImplyLeading: false,
          //centerTitle: true,

          title:Text('Select your area',

            style: TextStyle(

              fontSize: 20.0,

              color: Colors.black,

              fontWeight: FontWeight.w500,

            ),

          ) ,

          backgroundColor: Colors.lightBlue[400],

          // elevation: 100.0,

          //   brightness: Brightness.dark,



        ),







        backgroundColor: Colors.white,



        body: Padding(

          padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 10.0),

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

                      Column(

                        children: <Widget>[



                          Row(

                              children: <Widget>[

                                Padding(

                                  padding: EdgeInsets.symmetric(vertical:5.0,horizontal:10.0 ),

                                  child: ButtonTheme(

                                    minWidth: 320.0,

                                    height: 70.0,

                                    child: RaisedButton(

                                      elevation:10.0,

                                      color:Colors.white,

//                          MaterialTapTargetSize materialTapTargetSize,

                                      child: new Column(

                                        children: <Widget>[

//                              Image.asset("images/user_black.png"),

                                          Text("Dhaula Kuan", style: TextStyle(

                                            fontSize: 20.0,

                                            color: Colors.black,

                                            fontWeight: FontWeight.w500,

                                          ),),

                                        ],

                                      ),

                                      onPressed: (){

                                        print('You tapped on RaisedButton');

                                        navigateToDetail('dhaula kuan');

                                      },

                                    ),

                                  ),

                                ),





                              ]),

                          Row(

                              children: <Widget>[

                                Padding(

                                  padding: EdgeInsets.symmetric(vertical:5.0,horizontal:10.0 ),

                                  child: ButtonTheme(

                                    minWidth: 320.0,

                                    height: 70.0,

                                    child: RaisedButton(

                                      elevation:10.0,

                                      color:Colors.white,

//                          MaterialTapTargetSize materialTapTargetSize,

                                      child: new Column(

                                        children: <Widget>[

//                              Image.asset("images/user_black.png"),

                                          Text("Kashmiri Gate", style: TextStyle(

                                            fontSize: 20.0,

                                            color: Colors.black,

                                            fontWeight: FontWeight.w500,

                                          ),),

                                        ],

                                      ),

                                      onPressed: (){

                                        print('You tapped on RaisedButton');

                                        navigateToDetail('kashmiri gate');

                                      },

                                    ),

                                  ),

                                ),





                              ]),

                          Row(

                              children: <Widget>[

                                Padding(

                                  padding: EdgeInsets.symmetric(vertical:5.0,horizontal:10.0 ),

                                  child: ButtonTheme(

                                    minWidth: 320.0,

                                    height: 70.0,

                                    child: RaisedButton(

                                      elevation:10.0,

                                      color:Colors.white,

//                          MaterialTapTargetSize materialTapTargetSize,

                                      child: new Column(

                                        children: <Widget>[

//                              Image.asset("images/user_black.png"),

                                          Text("Mahipalpur", style: TextStyle(

                                            fontSize: 20.0,

                                            color: Colors.black,

                                            fontWeight: FontWeight.w500,

                                          ),),

                                        ],

                                      ),

                                      onPressed: (){

                                        print('You tapped on RaisedButton');

                                        navigateToDetail('Mahipalpur');

                                      },

                                    ),

                                  ),

                                ),





                              ]),

                          Row(

                              children: <Widget>[

                                Padding(

                                  padding: EdgeInsets.symmetric(vertical:5.0,horizontal:10.0 ),

                                  child: ButtonTheme(

                                    minWidth: 320.0,

                                    height: 70.0,

                                    child: RaisedButton(

                                      elevation:10.0,

                                      color:Colors.white,

//                          MaterialTapTargetSize materialTapTargetSize,

                                      child: new Column(

                                        children: <Widget>[

//                              Image.asset("images/user_black.png"),

                                          Text("Munirka", style: TextStyle(

                                            fontSize: 20.0,

                                            color: Colors.black,

                                            fontWeight: FontWeight.w500,

                                          ),),

                                        ],

                                      ),

                                      onPressed: (){

                                        print('You tapped on RaisedButton');

                                      },

                                    ),

                                  ),

                                ),





                              ]),

                          Row(

                              children: <Widget>[

                                Padding(

                                  padding: EdgeInsets.symmetric(vertical:5.0,horizontal:10.0 ),

                                  child: ButtonTheme(

                                    minWidth: 320.0,

                                    height: 70.0,

                                    child: RaisedButton(

                                      elevation:10.0,

                                      color:Colors.white,

//                          MaterialTapTargetSize materialTapTargetSize,

                                      child: new Column(

                                        children: <Widget>[

//                              Image.asset("images/user_black.png"),

                                          Text("Saket", style: TextStyle(

                                            fontSize: 20.0,

                                            color: Colors.black,

                                            fontWeight: FontWeight.w500,

                                          ),),

                                        ],

                                      ),

                                      onPressed: (){

                                        print('You tapped on RaisedButton');

                                      },

                                    ),

                                  ),

                                ),





                              ]),

                          Row(

                              children: <Widget>[

                                Padding(

                                  padding: EdgeInsets.symmetric(vertical:5.0,horizontal:10.0 ),

                                  child: ButtonTheme(

                                    minWidth: 320.0,

                                    height: 70.0,

                                    child: RaisedButton(

                                      elevation:10.0,

                                      color:Colors.white,

//                          MaterialTapTargetSize materialTapTargetSize,

                                      child: new Column(

                                        children: <Widget>[

//                              Image.asset("images/user_black.png"),

                                          Text("Sarojini", style: TextStyle(

                                            fontSize: 20.0,

                                            color: Colors.black,

                                            fontWeight: FontWeight.w500,

                                          ),),

                                        ],

                                      ),

                                      onPressed: (){

                                        print('You tapped on RaisedButton');

                                      },

                                    ),

                                  ),

                                ),





                              ]),

                          Row(

                              children: <Widget>[

                                Padding(

                                  padding: EdgeInsets.symmetric(vertical:5.0,horizontal:10.0 ),

                                  child: ButtonTheme(

                                    minWidth: 320.0,

                                    height: 70.0,

                                    child: RaisedButton(

                                      elevation:10.0,

                                      color:Colors.white,

//                          MaterialTapTargetSize materialTapTargetSize,

                                      child: new Column(

                                        children: <Widget>[

//                              Image.asset("images/user_black.png"),

                                          Text("Satya Niketan", style: TextStyle(

                                            fontSize: 20.0,

                                            color: Colors.black,

                                            fontWeight: FontWeight.w500,

                                          ),),

                                        ],

                                      ),

                                      onPressed: (){

                                        print('You tapped on RaisedButton');

                                      },

                                    ),

                                  ),

                                ),





                              ]),

//              SizedBox(

//                height: 30.0,

//              ),

//              Center(

//                child: Text(

//                  'Choose Account Type!',

//                  style: TextStyle(

//                    fontSize: 20.0,

//                    color:Colors.lightBlue[900],

//                    fontWeight: FontWeight.w500,

//                  ),

//                ),

//              ),

                        ],

                      ),





                    ],

                  ),

                ),





              ),

            ],

          ),

        ),

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

      return HomeUser(area);

    }));

  }

}
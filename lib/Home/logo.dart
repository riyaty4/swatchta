import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Logo extends StatefulWidget {
  static const String id= 'logo';
  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue[50],
//      decoration: BoxDecoration(
//        color: Colors.lightBlue[100],
//          image: DecorationImage(
//              image: AssetImage("images/finalwater.png"), fit: BoxFit.cover)
//            ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(70.0),
//                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
//                      Container(
//                        //color: Colors.black12,
//                        child: Image.asset('images/manholecoverb.png'),
//                        height: 200.0,
//                      ),
//                      SizedBox(
//                        width:10.0,
//                      ),
                        Center(
                          child: Text(
                            'Swatchta ',
                            style: TextStyle(
                              color:Colors.lightBlue[500],
                              fontSize: 47.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: Text(
                        "Let's Start!",

                        style: TextStyle(
                          fontSize: 25.0,
                          color:Colors.lightBlue[900],
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(vertical:5.0,horizontal:10.0 ),
                        child: SizedBox(
                          width: 150.0,
                          height: 150.0,
                          child: RaisedButton(
                            elevation:10.0,
                            color:Colors.white,
//                          MaterialTapTargetSize materialTapTargetSize,
                            child: new Column(
                              children: <Widget>[
                                Image.asset("images/user_black.png"),
                                Text("EMPLOYEE", style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),),
                              ],
                            ),
                            onPressed: (){
                              Navigator.pushNamed(context, "/LogIn");
                            },
                          ),
                        ),
                      ),

//                      Padding(
//                        padding: EdgeInsets.symmetric(vertical:10.0,horizontal:10.0 ),
//                        child: SizedBox(
//                          width: 150.0,
//                          height: 150.0,
//                          child: OutlineButton(
////                            elevation:10.0,
//                            borderSide: BorderSide(
//                              color: Colors.lightBlue[900], //Color of the border
//                              style: BorderStyle.solid, //Style of the border
//                              width: 1.0),
////                              Color: Colors.lightBlue[300],
////                           color:Colors.lightBlue[300],
////                          MaterialTapTargetSize materialTapTargetSize,
//                            child: new Column(
//                              children: <Widget>[
//                                Image.asset("images/user.png"),
//                                Text("Admin", style: TextStyle(
//                                  fontSize: 25.0,
//                                  color: Colors.black,
//                                  fontWeight: FontWeight.w500,
//                                ),),
//                              ],
//                            ),
//    onPressed: (){
//    print('You tapped on RaisedButton');
//    },
//    ),
//                        ),
//                        ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical:5.0,horizontal:10.0 ),
                        child: SizedBox(
                          width: 150.0,
                          height: 150.0,
                          child: RaisedButton(
                            elevation:10.0,
                            color:Colors.white,
//                          MaterialTapTargetSize materialTapTargetSize,
                            child: new Column(
                              children: <Widget>[
                                Image.asset("images/user_black.png"),
                                Text("USER", style: TextStyle(
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
              SizedBox(
                height: 30.0,
              ),
              Center(
                child: Text(
                  'Choose Account Type!',
                  style: TextStyle(
                    fontSize: 20.0,
                    color:Colors.lightBlue[900],
                    fontWeight: FontWeight.w500,
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
}


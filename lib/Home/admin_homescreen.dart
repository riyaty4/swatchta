import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterappp/Home/messagefinal.dart';
//import 'package:flutterappp/Home/messagenew.dart';
import 'package:flutterappp/Theme/userTheme.dart';

class HomeAdmin extends StatelessWidget {
  final String adminid;

  HomeAdmin({this.adminid});
  @override
  Widget build(BuildContext context) {
    Widget graph = Padding(
      padding: EdgeInsets.fromLTRB(50.0, 30.0, 10.0, 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/GraphScreen');
        },
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.10, 10.0, 10.0, 10.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                        height: 70.0,
                        width: 100.0,
                        child: Icon(
                          Icons.equalizer,
                          size: 60.0,
                          color: Colors.lightBlueAccent,
                        )
                        //Image(
                        //image: AssetImage('images/graph1.png') ,
                        //),
                        ),
                    Text(
                      'Graph',
                      // ignore: deprecated_member_use
                      style: Theme.of(context).textTheme.display2,
                    ),
                  ],
                ),
              ),
            )),
      ),
    );

    Widget map = Padding(
      padding: EdgeInsets.fromLTRB(2.0, 30.0, 10.0, 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/Map_list');
        },
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 70.0,
                      width: 100.0,
                      child: Icon(
                        Icons.location_on,
                        color: Colors.lightBlueAccent,
                        size: 70.0,
                        semanticLabel: 'Map',
                      ),
                    ),
                    Text(
                      'Map',
                      // ignore: deprecated_member_use
                      style: Theme.of(context).textTheme.display2,
                    ),
                  ],
                ),
              ),
            )),
      ),
    );

    Widget complaint = Padding(
      padding: EdgeInsets.fromLTRB(50.0, 10.0, 10.0, 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/GraphScreen');
        },
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                        height: 70.0,
                        width: 100.0,
                        child: Icon(
                          Icons.people_outline,
                          size: 60.0,
                          color: Colors.lightBlueAccent,
                        )
                        //Image(
                        //image: AssetImage('images/complaint.png') ,
                        //),
                        ),
                    Text(
                      'Complaints',
                      // ignore: deprecated_member_use
                      style: Theme.of(context).textTheme.display2,
                    ),
                  ],
                ),
              ),
            )),
      ),
    );

    Widget msg = Padding(
      padding: EdgeInsets.fromLTRB(2.0, 10.0, 10.0, 10.0),
      child: GestureDetector(
        onTap: () {
          print(adminid);
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ChatScreen(adminid: adminid)),
          );
        },
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                        height: 70.0,
                        width: 100.0,
                        child: Icon(
                          Icons.message,
                          color: Colors.lightBlueAccent,
                          size: 60.0,
                        )),
                    Text(
                      'Message',
                      // ignore: deprecated_member_use
                      style: Theme.of(context).textTheme.display2,
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
    Widget aboutUs = Padding(
        padding: EdgeInsets.fromLTRB(5.0, 45.0, 0.0, 0.0),
        child: Container(
          height: 40.0,
          width: 100.0,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: FlatButton(
              onPressed: () {},
              child: Text(
                'About Us',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ));
    Widget image_slider = Padding(
        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
        child: Container(
          height: 200.0,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),
          child: Carousel(
            boxFit: BoxFit.fill,
            images: [
              AssetImage("images/law.jpg"),
              AssetImage("images/law.jpg"),
              AssetImage("images/law.jpg"),
              AssetImage("images/law.jpg"),
            ],
            dotBgColor: Colors.black.withOpacity(0.0),
            autoplay: false,
            dotColor: Colors.white,
            dotIncreaseSize: 1.0,
          ),
        ));

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.fromLTRB(110.0, 0.0, 0.0, 0.0),
          child: Text(
            'Swatchta',
            // ignore: deprecated_member_use
            style: Theme.of(context).textTheme.title,
          ),
        ),
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            label: Text(''),
          )
        ],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: new Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                image_slider,
                Row(
                  children: <Widget>[
                    graph,
                    map,
                  ],
                ),
                Row(
                  children: <Widget>[
                    complaint,
                    msg,
                  ],
                ),
                aboutUs,
              ],
            ),
          ],
        ),
      ),
    );
  }
}

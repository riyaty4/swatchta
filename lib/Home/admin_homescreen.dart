import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterappp/Theme/userTheme.dart';

class HomeAdmin extends StatefulWidget {
  @override
  _HomeAdminState createState() => _HomeAdminState();
}

class _HomeAdminState extends State<HomeAdmin> {
  @override
  Widget build(BuildContext context) {
    // Widget graph =
    Padding(
      padding: EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/GraphScreen');
        },
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              color: Colors.white70,
            ),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 120.0,
                          width: 200.0,
                          child: Image(
                            image: AssetImage('images/graph1.png'),
                          ),
                        ),
                        Text(
                          'Graph',
                          style: Theme.of(context).textTheme.title,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );

    // Widget map =
    Padding(
      padding: EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/GraphScreen');
        },
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              color: Colors.white,
            ),
            child: ListView(
              children: <Widget>[
                Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 120.0,
                        width: 200.0,
                        child: Icon(
                          Icons.location_on,
                          size: 100.0,
                          semanticLabel: 'Map',
                        ),
                      ),
                      Text(
                        'Map',
                        style: Theme.of(context).textTheme.title,
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );

    // Widget complaint =
    Padding(
      padding: EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/GraphScreen');
        },
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              color: Colors.white70,
            ),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 120.0,
                          width: 200.0,
                          child: Image(
                            image: AssetImage('images/complaint.png'),
                          ),
                        ),
                        Text(
                          'Complaint',
                          style: Theme.of(context).textTheme.title,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );

    // Widget msg =
    Padding(
      padding: EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/GraphScreen');
        },
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                color: Colors.white),
            child: ListView(
              children: <Widget>[
                Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                          height: 120.0,
                          width: 200.0,
                          child: Icon(
                            Icons.message,
                            size: 100.0,
                          )),
                      Text(
                        'Message',
                        style: Theme.of(context).textTheme.title,
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );

    return MaterialApp(
      theme: userTheme(),
      debugShowCheckedModeBanner: false,
      title: 'Swatchta',
      home: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.fromLTRB(110.0, 0.0, 0.0, 0.0),
            child: Text(
              'Swatcha',
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
        body: new Padding(
          padding: const EdgeInsets.only(top: 5.0),
        ),
      ),
    );
  }

  Widget aboutUs = Padding(
      padding: EdgeInsets.all(5.0),
      child: Container(
        height: 5,
        width: 2.0,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.fromLTRB(145.0, 20.0, 0.0, 0.0),
          child: Text('About Us'),
        ),
      ));

  Widget image_slider = Padding(
      padding: EdgeInsets.all(5.0),
      child: Container(
        height: 200.0,
        child: Carousel(
          boxFit: BoxFit.fill,
          images: [
            AssetImage("images/law.jpg"),
            AssetImage(
              "images/graph.jpg",
            ),
            AssetImage(
              "images/complaint.png",
            ),
            AssetImage(
              "images/complaint.png",
            ),
            AssetImage(
              "images/complaint.png",
            ),
          ],
          dotBgColor: Colors.black.withOpacity(0.0),
          autoplay: true,
          dotColor: Colors.white,
          dotIncreaseSize: 1.0,
        ),
      ));
}

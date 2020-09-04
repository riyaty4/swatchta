import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterappp/Home/user_complaintscreen.dart';
import 'package:flutterappp/Home/user_map_screen.dart';
import 'package:flutterappp/Theme/userTheme.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeUser extends StatefulWidget {
  String area;
  HomeUser(this.area);
  @override
  _HomeUserState createState() => _HomeUserState(this.area);
}

class _HomeUserState extends State<HomeUser> {
  String area;
  _HomeUserState(this.area);
  Future<void> _launched;
  String _complaintUrl =
      'http://djb.gov.in/DJBPortal/portals/DJBCustomer.portal';
  String _newConnectionUrl =
      'http://delhijalboard.nic.in/content/sewer-connection';

  Future<void> _launchInBrowserForComlaint(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInBrowserForNewConnection(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    /*  Widget graph = Padding(
      padding: EdgeInsets.fromLTRB(5.0, 30.0, 10.0, 10.0),
      child:GestureDetector(
        onTap: (){
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
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                        height: 70.0,
                        width: 95.0,
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
                      style: Theme.of(context).textTheme.display2,
                    ),
                  ],
                ),
              ),
            )



        ),
      ),
    );*/

    Widget map = Padding(
      padding: EdgeInsets.fromLTRB(5.0, 30.0, 10.0, 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return UserMapScreen(area);
          }));
        },
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: Colors.white,
              // border: Border.all(color: Colors.white)
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 70.0,
                      width: 95.0,
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
      padding: EdgeInsets.fromLTRB(0.0, 30.0, 10.0, 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UserComplaintScreen()),
          );
          //    _launchInBrowserForComlaint(_complaintUrl);
          //    Navigator.of(context).pop();

          //   child: Text('OK'),
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
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                        height: 70.0,
                        width: 95.0,
                        child: Icon(
                          Icons.assignment,
                          size: 60.0,
                          color: Colors.lightBlueAccent,
                        )
                        //Image(
                        //image: AssetImage('images/complaint.png') ,
                        //),
                        ),
                    Text(
                      'Complaint',
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
      padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/FAQ');
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
              padding: const EdgeInsets.fromLTRB(5.0, 10.0, 10.0, 10.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                        height: 70.0,
                        width: 95.0,
                        child: Icon(
                          Icons.help_outline,
                          color: Colors.lightBlueAccent,
                          size: 60.0,
                        )),
                    Text(
                      'FAQs',
                      // ignore: deprecated_member_use
                      style: Theme.of(context).textTheme.display2,
                    ),
                  ],
                ),
              ),
            )),
      ),
    );

    Widget connection = Padding(
      padding: EdgeInsets.fromLTRB(0.0, 30.0, 10.0, 10.0),
      child: GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(
                    'This link will take you to an external website. https://delhijalboard.nic.in ',
                    // ignore: deprecated_member_use
                    style: Theme.of(context).textTheme.display2,
                  ),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {
                        _launchInBrowserForNewConnection(_newConnectionUrl);
                        Navigator.of(context).pop();
                      },
                      child: Text('OK'),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Cancel'),
                    )
                  ],
                );
              });
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
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                        height: 70.0,
                        width: 95.0,
                        child: Icon(
                          Icons.edit,
                          size: 60.0,
                          color: Colors.lightBlueAccent,
                        )
                        //Image(
                        //image: AssetImage('images/complaint.png') ,
                        //),
                        ),
                    Text(
                      //'    New\n'
                      'Connection',

                      // ignore: deprecated_member_use
                      style: Theme.of(context).textTheme.display2,
                    ),
                  ],
                ),
              ),
            )),
      ),
    );

    Widget contactUs = Padding(
      padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
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
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                        height: 70.0,
                        width: 95.0,
                        child: Icon(
                          Icons.contact_mail,
                          size: 60.0,
                          color: Colors.lightBlueAccent,
                        )
                        //Image(
                        //image: AssetImage('images/complaint.png') ,
                        //),
                        ),
                    Text(
                      'ContactUs',
                      // ignore: deprecated_member_use
                      style: Theme.of(context).textTheme.display2,
                    ),
                  ],
                ),
              ),
            )),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          child: Text(
            'Home',
            // ignore: deprecated_member_use
            style: Theme.of(context).textTheme.title,
          ),
        ),
        /* actions: <Widget>[
            FlatButton.icon(
              onPressed: (){},
              icon: Icon(Icons.help),
              label: Text(''),
            )
          ],*/
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: new Padding(
        padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                image_slider,
                Row(
                  children: <Widget>[
                    // graph,
                    map,
                    complaint,
                    connection,
                  ],
                ),
                Row(
                  children: <Widget>[
                    //connection,
                    msg,
                    contactUs,
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

  Widget aboutUs = Padding(
      padding: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
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
      padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 10.0),
      child: Container(
        height: 200.0,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
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
          autoplay: false,
          dotColor: Colors.white,
          dotIncreaseSize: 1.0,
        ),
      ));
}

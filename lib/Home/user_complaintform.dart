import "package:flutter/material.dart";
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutterappp/Home/user_complaintscreen.dart';
import 'user_homeScreen.dart';

class ComplaintForm extends StatefulWidget {
  static const String id = 'complaint_form';

  @override
  _ComplaintFormState createState() => _ComplaintFormState();
}

class _ComplaintFormState extends State<ComplaintForm> {
  bool loading = false;

  String email;

  String add;

  String error;

  String name;

  String prob;

  String contact;

//  final Function onSaved;

  final db = Firestore.instance;

  final _formKey = GlobalKey<FormState>();

  final TextEditingController t1 = new TextEditingController(text: " ");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              'Complaint Form',
              style: Theme.of(context).textTheme.title,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          child: ListView(
            children: <Widget>[
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(
                      height: 15.0,
                    ),

//                    Text(
//
//                      'Name',
//
//                      style: TextStyle(
//
//                        fontSize: 20,
//
//                        fontWeight: FontWeight.w900,
//
//                      ),
//
//                    ),
//
//                    SizedBox(
//
//                      height: 5.0,
//
//                    ),

                    TextFormField(
                      onChanged: (value) {
                        //Do something with the user input.

                        name = value;
                      },

                      validator: (value) =>
                          value.isEmpty ? 'Enter first name ' : null,

                      decoration: InputDecoration(
                        //hintText: 'Enter Password',
                        labelText: 'Name',
                        labelStyle: Theme.of(context).textTheme.display1,
                        contentPadding: EdgeInsets.all(10.0),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),

//                      onSaved: onSaved,
                    ),

                    SizedBox(
                      height: 10.0,
                    ),

//                    Text(
//
//                      'Email Address',
//
//                      style: TextStyle(
//
//                        fontSize: 20,
//
//                        fontWeight: FontWeight.w900,
//
//                      ),
//
//                    ),
//
//                    SizedBox(
//
//                      height: 5.0,
//
//                    ),

                    TextFormField(
                      decoration: InputDecoration(
                        //hintText: 'Enter Password',
                        labelText: 'E-mail Id',
                        labelStyle: Theme.of(context).textTheme.display1,
                        contentPadding: EdgeInsets.all(10.0),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                      validator: (val) => val.isEmpty ? 'Enter an email' : null,
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                    ),

                    TextFormField(
                      decoration: InputDecoration(
                        //hintText: 'Enter Password',
                        labelText: 'Contact',
                        labelStyle: Theme.of(context).textTheme.display1,
                        contentPadding: EdgeInsets.all(10.0),
                        prefixIcon: Icon(
                          Icons.contact_phone,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),

                      validator: (val) =>
                          val.isEmpty ? 'Enter your contact' : null,

                      onChanged: (val) {
                        setState(() => contact = val);
                      },

//                      'Contact',
//
//                      style: TextStyle(
//
//                        fontSize: 20,
//
//                        fontWeight: FontWeight.w900,
//
//                      ),
                    ),

                    SizedBox(
                      height: 10.0,
                    ),

//                    TextFormField(
//
//                      onChanged: (value) {
//
//                        //Do something with the user input.
//
////                        contact = int.parse(value);
//
//                      },
//
//                      validator: (value) =>
//
//                      value.isEmpty
//
//                          ? 'Enter contact'
//
//                          : null,
//
//                      decoration:InputDecoration(
//                        //hintText: 'Enter Password',
//                        labelText: 'Contact',
//                        labelStyle: Theme.of(context).textTheme.display1,
//                        contentPadding: EdgeInsets.all(10.0),
////                        prefixIcon: Icon(
////                          Icons.contacts,
////                          color: Theme.of(context).iconTheme.color,
////                        ),
//                      ),
//
////                      onSaved: onSaved,
//
//                    ),

//                    SizedBox(
//
//                      height: 10.0,
//
//                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        //hintText: 'Enter Password',
                        labelText: 'Contact',
                        labelStyle: Theme.of(context).textTheme.display1,
                        contentPadding: EdgeInsets.all(10.0),
                        prefixIcon: Icon(
                          Icons.contact_phone,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),

                      validator: (val) =>
                          val.isEmpty ? 'Enter your contact' : null,

                      onChanged: (val) {
                        setState(() => contact = val);
                      },

//                      'Contact',
//
//                      style: TextStyle(
//
//                        fontSize: 20,
//
//                        fontWeight: FontWeight.w900,
//
//                      ),
                    ),

                    Text(
                      'Address',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),

                    SizedBox(
                      height: 5.0,
                    ),

                    TextFormField(
                      maxLength: 20,
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                          hintText: 'Enter a value',
                          helperMaxLines: 20,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          )),
                      validator: (val) =>
                          val.isEmpty ? 'Enter the address ' : null,
                      onChanged: (val) {
                        setState(() => add = val);
                      },
                    ),

                    SizedBox(
                      height: 5.0,
                    ),

                    Text(
                      'Problem',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),

                    SizedBox(
                      height: 5.0,
                    ),

                    Container(
                      width: 50.0,
                      height: 200.0,
                      child: TextFormField(
                        maxLength: 50,
                        maxLines: 50,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                            hintText: 'Enter a value',
                            helperMaxLines: 50,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                            )),
                        validator: (val) =>
                            val.isEmpty ? 'Enter your problem' : null,
                        onChanged: (val) {
                          setState(() => prob = val);
                        },
                      ),
                    ),

                    SizedBox(
                      height: 24.0,
                    ),

                    RaisedButton(
                        textColor: Colors.black,
                        color: Colors.lightBlueAccent,
                        child: new Text("submit"),
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            setState(() => loading = true);

                            //unlike in other olaces this data is being saved in jason format because it is more appropriate according to net

                            await db.collection('complaint').add(toJason());

                            print("succesufl");

                            showAlertDialog(context);
                          }
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Map<String, dynamic> toJason() => {
        'address': add,
        'problem': prob,
        'seen': false,
        'name': name,
        'email': email,
        'contact': contact,
      };

  void gettingdata() async {
    await for (var snapshot in db.collection('complaint').snapshots()) {
      for (var loc in snapshot.documents) {
        print(loc.data.values.elementAt(0));

        print(loc.data.values.elementAt(1));

        print(loc.data.values.elementAt(2));

        print(loc.data.values.elementAt(2));

        // print(loc['Coordinates'].latitude);

        // print(loc['Coordinates'].longitude);

      }
    }
  }

  showAlertDialog(BuildContext context) {
    // set up the button

    Widget okButton = FlatButton(
        child: Text("OK"),
        onPressed: () {
//
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => UserComplaintScreen()));
        });

    // set up the AlertDialog

    AlertDialog alert = AlertDialog(
      title: Text("Submitted"),
      content: Column(
        children: <Widget>[
          Text(
            "name",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(name),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "email",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(email),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "contact",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text('$contact'),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Address",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(add),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Problem",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(prob),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
      actions: [
        okButton,
      ],
    );

    // show the dialog

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

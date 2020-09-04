import 'package:flutter/material.dart';

class FAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // centerTitle: true,
        title: Text('FAQ',style: TextStyle(
          color: Colors.black
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(2.0, 10.0,12.0, 2.0),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'Q1. What are the online services provided by Swatchta?\n\n'
                    'Ans. 1. Online application submission for New Connection. \n'
                      '2. Remote Monitoring of Sewer using your Mobile Phone \n'
                    '3. Online complaint form for Sewer related problem.\n',
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 15.0, 0.0, 0.0),
                  child: Text(
                    'Q2. Who can apply for new sewer connection?\n\n'
                        'Ans. Any resident of Delhi- owner of premises/tenant who has valid proof of identity and property ownership (except in the area under the control of NDMC & Delhi Cantonment Board), can apply for new  sewer connection.\n',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 15.0, 0.0, 0.0),
                  child: Text(
                    'Q3. What is the procedure for regularization of unauthorized sewer connection ? \n\n'
                        'Ans. On payment of the following charges, an unauthorized sewer connection can be regularized  subject to the technical legal feasibility and a payment of following charges:- \n'
                  'a). Penalty of Rs.500 for Domestic, Rs. 1000 for Non-Domestic and Rs. 5000 for Industrial properties. \n'
                        'b). Sewer Development Charges, wherever applicable.\n'
                        'c). Usual initial charges such as opening fee and Road Restoration Charges, dues on property etc.\n ',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

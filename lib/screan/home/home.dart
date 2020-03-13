import 'package:flutter/material.dart';
import 'package:god_plans/screan/home/analysis.dart';
import 'package:god_plans/screan/home/checklocations.dart';
import 'package:god_plans/screan/home/safelocation.dart';
import 'package:god_plans/screan/home/userdetails.dart';
import 'package:god_plans/services/auth.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final AuthServices _auth = AuthServices();
    return Scaffold(
      backgroundColor: Colors.blue[250],
      appBar: AppBar(
        title: Text('Flood Warning'),
        backgroundColor: Colors.blue[350],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async {
                await _auth.signOut();
              } ,
              icon: Icon(Icons.person),
              label: Text('Log out'))
        ],

      ),
      body: Container(
          child: Column(



              children: <Widget>[
                 Column(
                    children:<Widget> [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget> [
                            SizedBox(height: 40,),
                            FlatButton(
                                padding: EdgeInsets.fromLTRB(10.0, 30.0, 20.0, 20.0),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) => UserDetail()
                                      )
                                  );
                                },
                                child: Image(
                                  image: AssetImage('assets/download.png'),
                                  width: 150.0,
                                  height: 150.0,

                                )
                            ),
                            FlatButton(
                              padding: EdgeInsets.fromLTRB(10.0, 30.0, 20.0, 20.0),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) => Analysis()
                                    )
                                );
                              },
                              child: Image(
                                image: AssetImage('assets/details.png'),
                                width: 150.0,
                                height: 150.0,
                              ),
                            ),

                            SizedBox(height: 40,),
                          ]


                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget> [

                          //  SizedBox(height: 40,),
                            FlatButton(
                                padding: EdgeInsets.fromLTRB(10.0, 100.0, 20.0, 20.0),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) => CheckLocations()
                                      )
                                  );
                                },
                                child: Image(
                                  image: AssetImage('assets/location.png'),
                                  width: 150.0,
                                  height: 150.0,

                                )
                            ),
                            FlatButton(
                                padding: EdgeInsets.fromLTRB(10.0, 100.0, 20.0, 20.0),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) => SafeLocations()
                                      )
                                  );
                                },
                                child: Image(
                                  image: AssetImage('assets/safehouse.png'),
                                  width: 150.0,
                                  height: 150.0,

                                )
                            ),
                          ]  )

                    ]
                ),


//                RaisedButton(
//                  child: Text('Analisis'),
//                  onPressed: () {
//                    Navigator.push(context,
//                      MaterialPageRoute(
//                        builder: (BuildContext context) => Analysis()
//                      )
//                    );
//                  },
//                ),
//                RaisedButton(
//                  child: Text('User details'),
//                  onPressed: () {
//                    Navigator.push(context,
//                        MaterialPageRoute(
//                            builder: (BuildContext context) => UserDetail()
//                        )
//                    );
//                  },
//                ),
//                RaisedButton(
//                  child: Text(' Locations'),
//                  onPressed: () {
//                    Navigator.push(context,
//                        MaterialPageRoute(
//                            builder: (BuildContext context) => CheckLocations()
//                        )
//                    );
//                  },
//                )

              ],
          ),

      ),
    );
  }
}





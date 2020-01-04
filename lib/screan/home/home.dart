import 'package:flutter/material.dart';
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
    );
  }
}

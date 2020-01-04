import 'package:flutter/material.dart';
import 'package:god_plans/services/auth.dart';

class SignIn extends StatefulWidget {

  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {


  final AuthServices _auth = AuthServices();

  //text field state

  String email = '';
  String password = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        elevation: 0.0,
        title: Text('Flood Wornings'),
        actions: <Widget>[
          RaisedButton.icon(
              color: Colors.blue[300],
              onPressed: (){
                  widget.toggleView(); 
              },
              icon: Icon(Icons.person),
              label: Text('Regiser'))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50 ,vertical: 20),
        child: Form(
          child:Column(
            children: <Widget>[
              SizedBox(height: 20.0,),
              TextField(
                decoration: InputDecoration(hintText: "Email"),
                onChanged: (val) {
                   setState((){
                     email=val;
                   });
                },
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(hintText: "Password"),
                obscureText: true,
                onChanged: (val) {
                    setState ((){
                      password = val;
                    });
                },
              ),
              SizedBox(height: 20,),
              RaisedButton(
                color: Colors.blue[700],
                child: Text('Sign In',
                style: TextStyle(color: Colors.white),),
                onPressed: () async {
                    print(email);
                    print(password);
                },

              )

            ],
          )
        ),
      ),
    );
  }
}


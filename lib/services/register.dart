import 'package:flutter/material.dart';
import 'package:god_plans/screan/authentication/authentication.dart';
import 'package:god_plans/services/auth.dart';
import 'package:god_plans/services/location.dart';
class Register extends StatefulWidget {

  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {


  final AuthServices  _auth = new AuthServices();
  final _formKey = GlobalKey<FormState>();

  // Register staters foes here
  String email = '';
  String password = '';
  String phoneno = '';
  String erro = '';
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
              label: Text('Sign In'))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50 ,vertical: 10),
        child: Form(
          key: _formKey,
            child:Column(
              children: <Widget>[
                SizedBox(height: 10.0,),
                TextField(
                  decoration: InputDecoration(hintText: "Email"),
               //   validator :(val) => val.isEmpty ? 'Enter an Email' : null ,
                  onChanged: (val) {
                    setState((){
                      email=val;
                    });
                  },
                ),
                SizedBox(height: 10,),
                TextField(

                  decoration: InputDecoration(hintText: "Password"),
                  obscureText: true,
               //   validator :(val) => val.isEmpty ? 'Enter an Email' : null ,
                  onChanged: (val) {

                    setState ((){
                      password = val;
                    });
                  },
                ),

                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(hintText: "Telephone No"),
                  onChanged: (val) {
                    setState ((){
                      phoneno = val;
                    });
                  },
                ),
                SizedBox(height: 10,),
                RaisedButton.icon(onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(
                              builder: (BuildContext context) => GetLocation()
                        )
                      );
                }, icon: Icon(Icons.add_location),
                    label: Text("Add location")),
                SizedBox(height: 10,),
                RaisedButton(
                  color: Colors.blue[700],
                  child: Text('Register',
                    style: TextStyle(color: Colors.white),),
                  onPressed: () async {
//                    if(_formKey.currentState.validate())
//                      {
                        print(email);
                        print(password);
//                        print(phoneno);

                        dynamic result = await _auth.registerWithEmailAndPassword(email,password);

                        print("Hellow");
                        if(result == null){
                                setState(() {
                                      erro = 'PLeace suply valid  email';
                                });
                        }else{
                          print('Error');
                        }

                   //  }
                  },

                ),




              ],
            )
        ),
      ),
    );
  }
}

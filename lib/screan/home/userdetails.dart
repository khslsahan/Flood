 import 'package:flutter/material.dart';

class UserDetail extends StatelessWidget {
  bool chk = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[900],
      appBar:AppBar(
        title:Text('User Details'),
        centerTitle: true ,
        backgroundColor: Colors.grey[855],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/user.jpg'),
                radius: 90.0,
              ),
            ),
            Divider(
              height:90.0,
              color: Colors.grey[800],
            ),

            Row(
              children: <Widget>[
                Text(
                    'Name',
                    style:TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,

                    )
                ),
                SizedBox(width: 20.0),
                Text(
                    'Odith Ravihara',
                    style:TextStyle(
                        color: Colors.blue,
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold
                    )
                ),

              ],

            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Text(
                    'Water LEVEL',
                    style:TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,

                    )
                ),
                SizedBox(width: 20.0),
                Text(
                    '8 Level',
                    style:TextStyle(
                        color: Colors.blue,
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold
                    )
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Text(
                    'Flood State',
                    style:TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,

                    )
                ),
                SizedBox(width: 20.0),
                Text(
                    'Safe',
                    style:TextStyle(
                        color: Colors.blue,
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold
                    )
                ),
              ],
            ),


            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.home,
                  size: 50,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 30.0),
                Text(
                  '49 A / 149 \n,hansgiri road\n,gampaha',
                  style: TextStyle(
                    color:Colors.blue,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),

            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Text(
                    'Allow SMS Notification',
                    style:TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,

                    )
                ),
                SizedBox(width: 20.0),
                Checkbox(value: chk, onChanged: (bool val) {
                  chk = val;
                },
                  activeColor: Colors.blue,
                  checkColor: Colors.black,
                )
              ],

            ),

          ],
        ),
      ),
    );
  }
}

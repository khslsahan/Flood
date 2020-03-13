

import 'package:flutter/material.dart';
//import 'package:syncfusion_flutter_charts/charts.dart';

class SafeHousAvailable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Safe House Information'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: <Widget>[

            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Text(
                    'Address',
                    style:TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,

                    )
                ),
                SizedBox(width: 20.0),
                Text(
                    ' Idigolla Temple\n, Aluthgama East \n, gampaha \n',
                    style:TextStyle(
                        color: Colors.blue,
                        letterSpacing: 2.0,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                    )
                ),

              ],

            ),

            SizedBox(height: 30.0),

            Row(
              children: <Widget>[
                Text(
                    'Distance to Llocation',
                    style:TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,

                    )
                ),
                SizedBox(width: 20.0),
                Text(
                    ' 10 Km',
                    style:TextStyle(
                        color: Colors.blue,
                        letterSpacing: 2.0,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                    )
                ),

              ],

            ),


            SizedBox(height: 30.0),

            Row(
              children: <Widget>[
                Text(
                    'Maximum no of victimes',
                    style:TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,

                    )
                ),
                SizedBox(width: 20.0),
                Text(
                    ' 300',
                    style:TextStyle(
                        color: Colors.blue,
                        letterSpacing: 2.0,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                    )
                ),

              ],



            ),



            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Text(
                    'No of victimes in now',
                    style:TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,

                    )
                ),
                SizedBox(width: 20.0),
                Text(
                    ' 30',
                    style:TextStyle(
                        color: Colors.blue,
                        letterSpacing: 2.0,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                    )
                ),

              ],



            ),
          ],
        ),
      ),


    );
  }
}

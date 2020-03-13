import 'package:flutter/material.dart';
import 'package:god_plans/screan/home/status.dart';
import 'package:latlong/latlong.dart';
import 'package:flutter_map/flutter_map.dart';




class CheckLocations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Location'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Text('Desigis'),

      ),
      body: FlutterMap(

        options: MapOptions(
          minZoom: 10.0,
          center: LatLng(7.083668,79.966046),
        ),
        layers: [
          TileLayerOptions(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains:  ['a','b','c']
          ),
          MarkerLayerOptions(
              markers: [
                new Marker(
                    width: 45.0,
                    height: 45.0,
                    point: LatLng(7.100648,79.986046),
                    builder: (context) => Container(
                      child: IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.blue,
                        iconSize: 45.0,
                        onPressed: (){
                          print('Marker taped haha');
                          Navigator.push(context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => FloodStates()
                            )
                          );
                        },
                      ),
                    )

                ),
                new Marker(
                    width: 45.0,
                    height: 45.0,
                    point: LatLng(7.120648,80.006046),
                    builder: (context) => Container(
                      child: IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.blue,
                        iconSize: 45.0,
                  onPressed: (){
                  print('Marker taped haha');
                  Navigator.push(context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => FloodStates()
                     )
              );}
                      ),
                    )

                ),

                new Marker(
                    width: 45.0,
                    height: 45.0,
                    point: LatLng(7.100648,79.966046),
                    builder: (context) => Container(
                      child: IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.blue,
                        iconSize: 45.0,
                        onPressed: (){
                          print('Marker taped haha');
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => FloodStates()
                              )
                          );
                        },                      ),
                    )

                ),
                new Marker(
                    width: 45.0,
                    height: 45.0,
                    point: LatLng(7.105648,79.950046),
                    builder: (context) => Container(
                      child: IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.blue,
                        iconSize: 45.0,
                        onPressed: (){
                          print('Marker taped haha');
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => FloodStates()
                              )
                          );
                        },
                      ),
                    )

                ),
                new Marker(
                    width: 45.0,
                    height: 45.0,
                    point: LatLng(7.112648,79.940046),
                    builder: (context) => Container(
                      child: IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.blue,
                        iconSize: 45.0,
                        onPressed: (){
                          print('Marker taped haha');
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => FloodStates()
                              )
                          );
                        },
                      ),
                    )

                ),
                new Marker(
                    width: 45.0,
                    height: 45.0,
                    point: LatLng(7.122648,79.920046),
                    builder: (context) => Container(
                      child: IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.blue,
                        iconSize: 45.0,
                        onPressed: (){
                          print('Marker taped haha');
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => FloodStates()
                              )
                          );
                        },
                      ),
                    )

                ),



                new Marker(
                    width: 45.0,
                    height: 45.0,
                    point: LatLng(7.083668,79.966046),
                    builder: (context) => Container(
                      child: IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.red,
                        iconSize: 45.0,
                        onPressed: (){
                          print('Marker taped haha');
                        },
                      ),
                    )

                )

              ]
          )
        ],
      ),
    );
  }
}

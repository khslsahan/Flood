import 'package:flutter/material.dart';
import 'package:latlong/latlong.dart';
import 'package:flutter_map/flutter_map.dart';




class GetLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Location'),
        centerTitle: true,
      ),
      drawer: Drawer(

      ),
      body: FlutterMap(

        options: MapOptions(
          minZoom: 10.0,
          center: LatLng(7.082554,80.019272),
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
                    point: LatLng(7.082554,80.019272),
                    builder: (context) => Container(
                      child: IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.blue,
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

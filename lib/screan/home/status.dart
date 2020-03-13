import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class FloodStates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Flood States'),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 0.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
            Container(
            height: 400,
            width: 350,
            child: SfCartesianChart(
              title: ChartTitle(
                  text: "Daily Water level"
              ),
              primaryXAxis: NumericAxis(
                  title: AxisTitle(
                      text: "date"
                  )
              ),

              primaryYAxis: NumericAxis(
                title: AxisTitle(
                text: "water lever"
            )
          ),

              tooltipBehavior: TooltipBehavior(
                  enable: true,
                  activationMode: ActivationMode.longPress
              ),
              series: <ChartSeries>[
                ColumnSeries<SalesData,double>(
                    dataSource: getColumnData(),
                    xValueMapper: (SalesData sales,_)=>sales.x,
                    yValueMapper: (SalesData sales,_)=>sales.y,
                    dataLabelSettings: DataLabelSettings(
                      isVisible: true,
                      //position: CartesianLabelPosition.middle
                    )
                )
              ],
            ),

            )
                ],
              ),

              Row(
                children: <Widget>[
                  Text(
                      'location',
                      style:TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,

                      )
                  ),
                  SizedBox(width: 20.0),
                  Text(
                      'Aluthgama East ,\n  gampaha \n',
                      style:TextStyle(
                          color: Colors.blue,
                          letterSpacing: 2.0,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                      )
                  ),

                ],

              ),

              Row(
                children: <Widget>[
                  Text(
                      'Water Level',
                      style:TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,

                      )
                  ),
                  SizedBox(width: 20.0),
                  Text(
                      'level 5',
                      style:TextStyle(
                          color: Colors.blue,
                          letterSpacing: 2.0,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                      )
                  ),

                ],
              ),

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

              Row(
                children: <Widget>[
                  Text(
                      'Avrerge water depth',
                      style:TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,

                      )
                  ),
                  SizedBox(width: 20.0),
                  Text(
                      ' 12.5m',
                      style:TextStyle(
                          color: Colors.blue,
                          letterSpacing: 2.0,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ],
              ),





            ],
          ),
        ),


      ),
    );
  }
}


class SalesData{
  double x,y;
  SalesData(this.x,this.y);
}

dynamic getColumnData(){
  List<SalesData> columnData=<SalesData>[
    SalesData(7,20),
    SalesData(14,30),
    SalesData(21,10),
    SalesData(28,20),
  ];
  return columnData;
}

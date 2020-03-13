

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Analysis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Analytics'),
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
                          text: "Weekly Regional Water level"
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
                      'Region',
                      style:TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,

                      )
                  ),
                  SizedBox(width: 20.0),
                  Text(
                      '  gampaha ',
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
                      'Regional Flood State',
                      style:TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,

                      )
                  ),
                  SizedBox(width: 20.0),
                  Text(
                      'low level',
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
                      'Main Streams \nFlow Region',
                      style:TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,

                      )
                  ),
                  SizedBox(width: 20.0),
                  Text(
                      ' Atthnegalu oya \n kalni Revier\n',
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
    SalesData(7,34,),
    SalesData(14,20),
    SalesData(21,40),
    SalesData(28,10),
  ];
  return columnData;
}

import 'package:bezier_chart/bezier_chart.dart';
import 'package:flutter/material.dart';

Widget graf1(BuildContext context) {

  final date1 = DateTime(2020,6,22);
  final date2 = DateTime(2020,7,22);
  final date3 = DateTime(2020,8,22);

  return Center(
    child: Container(
      color: Colors.green,
      height: MediaQuery.of(context).size.height*0.2,
      width: MediaQuery.of(context).size.width,
      child: BezierChart(
        fromDate: date1,
        bezierChartScale: BezierChartScale.MONTHLY,
        toDate: date3,
        selectedDate: date3,
        series: [
          BezierLine(
            label: "Valor Real",
            lineColor: Colors.blue,
            data: [
              DataPoint<DateTime>(value: 205, xAxis: date1),
              DataPoint<DateTime>(value: 177, xAxis: date2),
              DataPoint<DateTime>(value: 163, xAxis: date3),
            ],
          ),
          BezierLine(
            label: "Valor minimo",
            lineColor: Colors.yellow,
            data: [
              DataPoint<DateTime>(value: 140, xAxis: date1),
              DataPoint<DateTime>(value: 140, xAxis: date2),
              DataPoint<DateTime>(value: 140, xAxis: date3),
            ],
          ),
          BezierLine(
            label: "Valor maximo",
            lineColor: Colors.black,
            data: [
              DataPoint<DateTime>(value: 200, xAxis: date1),
              DataPoint<DateTime>(value: 200, xAxis: date2),
              DataPoint<DateTime>(value: 200, xAxis: date3),
            ],
          ),
        ],
        config: BezierChartConfig(
           verticalIndicatorStrokeWidth: 3.0,
          verticalIndicatorColor: Colors.black26,
          showVerticalIndicator: true,
          verticalIndicatorFixedPosition: true,
          backgroundGradient: LinearGradient(
            colors: [
              Colors.green[300],
              Colors.green[400],
              Colors.green[400],
              Colors.green[500],
              Colors.green,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),)
      ),
    ),
  );
}
Widget graf2(BuildContext context) {

  final date1 = DateTime(2020,6,22);
  final date2 = DateTime(2020,7,22);
  final date3 = DateTime(2020,8,22);

  return Center(
    child: Container(
      color: Colors.green,
      height: MediaQuery.of(context).size.height*0.2,
      width: MediaQuery.of(context).size.width,
      child: BezierChart(
        fromDate: date1,
        bezierChartScale: BezierChartScale.MONTHLY,
        toDate: date3,
        selectedDate: date3,
        series: [
          BezierLine(
            label: "Valor Real",
            lineColor: Colors.blue,
            data: [
              DataPoint<DateTime>(value: 275, xAxis: date1),
              DataPoint<DateTime>(value: 150, xAxis: date2),
              DataPoint<DateTime>(value: 179, xAxis: date3),
            ],
          ),
          BezierLine(
            label: "Valor minimo",
            lineColor: Colors.yellow,
            data: [
              DataPoint<DateTime>(value: 150, xAxis: date1),
              DataPoint<DateTime>(value: 150, xAxis: date2),
              DataPoint<DateTime>(value: 150, xAxis: date3),
            ],
          ),
          BezierLine(
            label: "Valor maximo",
            lineColor: Colors.black,
            data: [
              DataPoint<DateTime>(value: 250, xAxis: date1),
              DataPoint<DateTime>(value: 250, xAxis: date2),
              DataPoint<DateTime>(value: 250, xAxis: date3),
            ],
          ),
        ],
        config: BezierChartConfig(
           verticalIndicatorStrokeWidth: 3.0,
          verticalIndicatorColor: Colors.black26,
          showVerticalIndicator: true,
          verticalIndicatorFixedPosition: true,
          backgroundGradient: LinearGradient(
            colors: [
              Colors.green[300],
              Colors.green[400],
              Colors.green[400],
              Colors.green[500],
              Colors.green,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),)
      ),
    ),
  );
}
Widget cardInfo(double max,double min, double atual){
  return Card(
                color: Colors.green,
                child: Padding(padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.lens,color: Colors.black,),
                        Text("Valor Máximo : $max",style: TextStyle(color:Colors.white),)
                      ],
                    ),
                     Row(
                      children: [
                        Icon(Icons.lens,color: Colors.blue,),
                        Text("Valor Atual : $atual",style: TextStyle(color:Colors.white),)
                      ],
                    ),
                     Row(
                      children: [
                        Icon(Icons.lens,color: Colors.yellow,),
                        Text("Valor Minimo : $min",style: TextStyle(color:Colors.white),)
                      ],
                    )
                  ],
                ),)
              );
}
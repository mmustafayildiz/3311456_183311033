import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'daire_grafik.dart';

class grafik2 extends StatefulWidget {
  const grafik2({Key? key}) : super(key: key);

  @override
  State<grafik2> createState() => _grafik2State();
}

class _grafik2State extends State<grafik2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("İlaç grafiği (Olması gereken)",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18,
            )),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.ads_click, color: Colors.blue, size: 40),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => grafik()));
            },
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          SizedBox(height: 20),
          Text(
              'Ortalama olarak ecza depo ve stoklarında bulunması gereken oranları(%)'),
          Center(
            child: Container(
              width: 200,
              height: 200,
              child: PieChart(
                PieChartData(
                    startDegreeOffset: -200,
                    sectionsSpace: 1,
                    centerSpaceRadius: 78,
                    sections: [
                      //Ritalin
                      PieChartSectionData(
                          value: 1000, title: '%3', color: Colors.white),

                      //Abstral
                      PieChartSectionData(
                          value: 1000, title: '%3', color: Colors.yellow),

                      //Actiq
                      PieChartSectionData(
                          value: 1000, title: '%3', color: Colors.orange),

                      //Aldolan
                      PieChartSectionData(
                          value: 1000, title: '%3', color: Colors.blue),

                      //Fentanil
                      PieChartSectionData(
                          value: 1000, title: '%3', color: Colors.brown),

                      //Durogesic
                      PieChartSectionData(
                          value: 1000, title: '%3', color: Colors.red),

                      //Conterga
                      PieChartSectionData(
                          value: 1000, title: '%3', color: Colors.black),

                      //Medikinet
                      PieChartSectionData(
                          value: 1000, title: '%3', color: Colors.grey),

                      //Morfin
                      PieChartSectionData(
                          value: 1000, title: '%3', color: Colors.purple),

                      //Reaccutane
                      PieChartSectionData(
                          value: 1000, title: '%3', color: Colors.pinkAccent),

                      //Diğer İlaçlar
                      PieChartSectionData(
                          value: 1000, title: '%3', color: Colors.blueGrey),

                      ///December
                      PieChartSectionData(
                        value: 19000,
                        title: '%67',
                        color: Colors.black12,
                      ),
                    ]),
              ),
            ),
          ),
          SizedBox(height: 40),
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                color: Colors.white,
              ),
              SizedBox(width: 10),
              Text('Ritalin---(%3)')
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                color: Colors.yellow,
              ),
              SizedBox(width: 10),
              Text('Abstral---(%3)')
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                color: Colors.orange,
              ),
              SizedBox(width: 10),
              Text('Actiq---(%3)')
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                color: Colors.blue,
              ),
              SizedBox(width: 10),
              Text('Aldaton---(%3)')
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                color: Colors.brown,
              ),
              SizedBox(width: 10),
              Text('Jurnista---(%3)')
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                color: Colors.red,
              ),
              SizedBox(width: 10),
              Text('Fentanil---(%3)')
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                color: Colors.black,
              ),
              SizedBox(width: 10),
              Text('Durogesic---(%3)')
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                color: Colors.grey,
              ),
              SizedBox(width: 10),
              Text('Conterga---(%3)')
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                color: Colors.purple,
              ),
              SizedBox(width: 10),
              Text('Medikinet---(%3)')
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                color: Colors.pinkAccent,
              ),
              SizedBox(width: 10),
              Text('Morfin---(%3)')
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                color: Colors.blueGrey,
              ),
              SizedBox(width: 10),
              Text('Roaccutane---(%3)')
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                color: Colors.black12,
              ),
              SizedBox(width: 10),
              Text('Normal ilaç(Kırmızı Reçete dışı)---(%89)')
            ],
          ),
        ],
      ),
    );
  }
}

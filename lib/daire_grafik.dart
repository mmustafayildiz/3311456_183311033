import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class grafik extends StatefulWidget {
  const grafik({Key? key}) : super(key: key);

  @override
  State<grafik> createState() => _grafikState();
}

class _grafikState extends State<grafik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.tealAccent,
      appBar: AppBar(backgroundColor:Colors.red,
        title: Text("İlaç Daire grafiği (Database)",style: TextStyle(
        fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 18,
        )),

      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          SizedBox(height: 20),
          Text('Ortalama olarak ecza depo ve stoklarında bulunma oranları(%)'),
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
                          value: 600,
                          title: '%1',
                          color: Colors.white
                      ),

                      //Abstral
                      PieChartSectionData(
                          value: 600,
                          title: '%1',
                          color: Colors.yellow
                      ),

                      //Actiq
                      PieChartSectionData(
                          value: 600,
                          title: '%1',
                          color: Colors.orange
                      ),

                      //Aldolan
                      PieChartSectionData(
                          value: 600,
                          title: '%1',
                          color: Colors.blue
                      ),

                      //Fentanil
                      PieChartSectionData(
                          value: 600,
                          title: '%1',
                          color: Colors.brown
                      ),

                      //Durogesic
                      PieChartSectionData(
                          value: 600,
                          title: '%1',
                          color: Colors.red
                      ),

                      //Conterga
                      PieChartSectionData(
                          value: 600,
                          title: '%1',
                          color: Colors.black
                      ),

                      //Medikinet
                      PieChartSectionData(
                          value: 600,
                          title: '%1',
                          color: Colors.grey
                      ),

                      //Morfin
                      PieChartSectionData(
                          value: 600,
                          title: '%1',
                          color: Colors.purple
                      ),

                      //Reaccutane
                      PieChartSectionData(
                          value: 600,
                          title: '%1',
                          color: Colors.pinkAccent
                      ),

                      //Diğer İlaçlar
                      PieChartSectionData(
                          value: 600,
                          title: '%1',
                          color: Colors.blueGrey
                      ),

                      ///December
                      PieChartSectionData(
                        value: 19000,
                        title: '%89',
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
              Text('Ritalin---Beklenen->(%3)-->Mevcut->(%1)!')
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
              Text('Abstral---Beklenen->(%3)-->Mevcut->(%1)!')
            ],
          ),
          SizedBox(height: 10),

          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                color: Colors.orange  ,
              ),
              SizedBox(width: 10),
              Text('Actiq---Beklenen->(%3)-->Mevcut->(%1)!')
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
              Text('Aldaton---Beklenen->(%3)-->Mevcut->(%1)!')
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
              Text('Jurnista---Beklenen->(%3)-->Mevcut->(%1)!')
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
              Text('Fentanil---Beklenen->(%3)-->Mevcut->(%1)!')
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
              Text('Durogesic---Beklenen->(%3)-->Mevcut->(%1)!')
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
              Text('Conterga---Beklenen->(%3)-->Mevcut->(%1)!')
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
              Text('Medikinet---Beklenen->(%3)-->Mevcut->(%1)!')
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
              Text('Morfin---Beklenen->(%3)-->Mevcut->(%1)!')
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
              Text('Roaccutane---Beklenen->(%3)-->Mevcut->(%1)!')
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
              Text('Normal ilaç-Beklenen->(%67)->Mevcut->(%89)')
            ],
          ),
        Text('Sonuçlar:\n'
            'Depolarda İfade edilen istatislikler ve mevcut stok durumları sonucunda:\n'
            '7920 adet Kırmızı reçeteli ilaç yapılan usulsüzlüklerle kayıptır.',style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 12,
        )),],
      ),
    );
  }
}
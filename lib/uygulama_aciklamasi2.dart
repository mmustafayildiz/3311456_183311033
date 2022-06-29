import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobil_eczane/main.dart';

import 'harit_yonlendirme.dart';
class aciklama2 extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.white,appBar: AppBar(backgroundColor: Colors.blue,
        title:new Text("Ana menüye dönmek için tıkla.->" ,style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 17,
        )),
        actions: <Widget>[
          new IconButton(
            icon:new Icon(Icons.ads_click, color: Colors.red,size: 40) ,
            onPressed:(){

              Navigator.push(context, MaterialPageRoute( builder:(context)=> Sinif5()));
            },)
        ],
      ),



        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [ Text('*Bu durumun yaşandığı ilaçlar: \n '
            '(1)- Roaccutane\n'
            '(2)- Durogesic\n'
            '(3)- Fentanil\n'
            '(4)- Jurnista\n'
            '(5)- Morfin\n'
            '(6)- Aldoran\n'
            '(7)- Actiq\n'
            '(8)- Ritalin\n'
            '(9)- Abstral\n'
            '(10)- Conterga\n'
            '(11)- Medikinet',style: TextStyle(
          color: Colors.black,
          fontSize: 19,
        )),
          Image.asset('images/eczaneisareti.jpg'),

          // Navigator.push(context, route)
        ]


        ,),



    ),

   ));}}

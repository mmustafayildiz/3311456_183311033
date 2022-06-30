import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobil_eczane/main.dart';

import 'Lobi2.dart';
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
            '(1)- Roaccutane- Merkezi sinir sistemi uyarıcı\n'
            '(2)- Durogesic- Merkezi sinir sistemi uyarıcı\n'
            '(3)- Fentani Merkezi sinir sistemi uyarıcı\n'
            '(4)- Jurnista- Merkezi sinir sistemi uyarıcı\n'
            '(5)- Morfin- Merkezi sinir sistemi baskılayıcı\n'
            '(6)- Aldoran- Merkezi sinir sistemi uyarıcı\n'
            '(7)- Actiq- Merkezi sinir sistemi uyarıcı\n'
            '(8)- Ritalin- Merkezi sinir sistemi uyarıcı\n'
            '(9)- Abstral- Merkezi sinir sistemi uyarıcı\n'
            '(10)- Conterga- Merkezi sinir sistemi uyarıcı\n'
            '(11)- Medikinet- Merkezi sinir sistemi uyarıcı',style: TextStyle(
          color: Colors.black,
          fontSize: 19,
        )),
          Image.asset('images/eczaneisareti.jpg'),

          // Navigator.push(context, route)
        ]


        ,),



    ),

   ));}}

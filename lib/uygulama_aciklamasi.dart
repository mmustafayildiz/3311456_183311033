import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobil_eczane/main.dart';
import 'package:mobil_eczane/uygulama_aciklamasi2.dart';
class aciklama extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        home: Scaffold(
          backgroundColor: Colors.white,appBar: AppBar(backgroundColor: Colors.blue,
          title:new Text("Bu durumun yaşandığı ilaçlar->" ,style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 17,
          )),
          actions: <Widget>[
            new IconButton(
              icon:new Icon(Icons.ads_click, color: Colors.red,size: 40) ,
              onPressed:(){

                Navigator.push(context, MaterialPageRoute( builder:(context)=> aciklama2()));
              },)
          ],
        ),



            body: Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [ Text('*Mobil Eczane Uygulamasının geliştirilme sebepleri \n '
                    '(1)- Eczanelerin kırmızı reçeteli ilaç satışında karaborsa oluşturmaları sebebiyle geliştirilen stok takibi.\n'
                    '(2)- Tarihi geçmiş ilaçların (zehirlemediği ama etkinliği azaldığı için) satılması sebebiyle stok takibi.\n'
                    '(3)- Tüm ilaçların stoklarında bulunması yasal bir zorunluluk olduğu halde reçete ile gelenlere yok demeleri.\n'
                    '(4)- İlaçların hastalara amacına uygun şekilde satılması ve uyuşturucu madde olarak kullanılmasının önüne geçme.\n'
                    '(5)- Stoklarını beyan eden eczaneler sayesinde hastanın kendine en yakın eczaneyi navigasyon aracılığıyla bulması',style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                )),
                  // Navigator.push(context, route)
                ]


                ,),



            ),

           ));}}

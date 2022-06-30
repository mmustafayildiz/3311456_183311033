import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobil_eczane/main.dart';

import 'Lobi2.dart';
class Sinif6 extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(


        home: Scaffold(

        backgroundColor:Colors.white ,


        body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [ Text('*Mobil Eczane Uygulamasının amacı: \n '
            '(1)- Kırmızı reçeteli katagorisinde olup her eczanede satılmayan ilaçların mevcut olduğu en yakın eczaneyi göstermek\n'
            '(2)- Kırmızı reçeteli ilaçların genel stok durumuyla ilgili bilgi tutmak ve kullanıcıya bilgi vermek.\n'
            '(3)- Kırmızı reçeteli ilaçların İllegal şekilde satışını gerçekleştirilmesinin önüne geçmek ve gerçekten ihtiyacı olanlara ulaştırmayı sağlamak.\n'
            '(4)- Devletin kurallarını uygulayıcı ve destekleyici şekilde eczaneleri kontrol etmek.',style: TextStyle(
          color: Colors.black,
          fontSize: 19,
        )),
        Image.asset('images/logo.jpeg'),
    RaisedButton(child:Text('Anasayfaya Dön'), onPressed:(){




    Navigator.push(context, MaterialPageRoute( builder:(context)=> Sinif5()));

    }),
    // Navigator.push(context, route)
    ]


    ,),



    ),

    appBar: AppBar(
    backgroundColor: Colors.black ,
    centerTitle: true,

    title: Text('Hakkımda'),


    )));}}

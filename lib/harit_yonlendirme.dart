import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobil_eczane/isimsifre_login.dart';
import 'package:mobil_eczane/uygulama_aciklamasi.dart';
import 'Hakkimda_Sayfasi.dart';
import 'GoogleHarita.dart';
import 'iletisim_sayfasi.dart';


void main() {

  runApp(Sinif5());

}

class Sinif5 extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.red,
              centerTitle: true,
              title: Text('Mobil Eczaneye Hoş Geldiniz')),
          body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
        Text('(!!Haritalar Sayfasına git diyerek önce Konumunuzu Tespit etmelisiniz. Tespit edildikten sonra Sağ üstteki işarete tıklayarak eczaneler listesine geçiniz!!).',style: TextStyle(
          color: Colors.red,
          fontSize: 18,
        )),
        Image.asset('images/logo.jpeg'),
        Container(
            color: Colors.blue,
            child:  Row(
                children:<Widget> [ Icon(Icons.email),Text('Sağlıklı Günler dileriz'),

    RaisedButton( child: Text('Hakkında Sayfası' ), onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>
          Sinif6()));
    }),]
            ),),RaisedButton( child: Text('Haritalar Sayfasına git.',style: TextStyle(
          color: Colors.red,
            fontSize: 12,
          ) ), onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>
              MapScreen()));

        }),
              RaisedButton( child: Text('Neden Mobil Eczane?' ), onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>
            aciklama()));

      }),


      ]),
    ),
      ),);}}
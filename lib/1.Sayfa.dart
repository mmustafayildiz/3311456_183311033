import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobil_eczane/main.dart';
import '2.Sayfa.dart';
import '3.Sayfa.dart';

void main() {

  runApp(Sinif2());

}
class Sinif2 extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(

        backgroundColor:Colors.white ,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/ilacresmi.jpg'),
            Text('Bilgilerin ile giriş yapmak için giriş ekranına tıkla.'),
            RaisedButton( child: Text('Giriş Ekranı İçin Tıkla! ' ), onPressed: (){

              Navigator.push(context, MaterialPageRoute( builder:(context)=> Sayfa3Login()));
            }),
            RaisedButton(child:Text('Anasayfa'), onPressed:(){




    Navigator.push(context, MaterialPageRoute( builder:(context)=> Sinif1()));

            }),
         // Navigator.push(context, route)
          ]







          ,),



        ),

        appBar: AppBar(
            backgroundColor: Colors.black ,
            centerTitle: true,

            title: Text('MOBİL ECZANE '),


          )




        ,));


    }}
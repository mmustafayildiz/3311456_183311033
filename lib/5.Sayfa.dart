import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobil_eczane/main.dart';
class Sinif6 extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        home: Scaffold(

        backgroundColor:Colors.white ,
        body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.asset('images/hacker.jpg'),
    RaisedButton(child:Text('Anasayfaya Dön'), onPressed:(){




    Navigator.push(context, MaterialPageRoute( builder:(context)=> Sinif1()));

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

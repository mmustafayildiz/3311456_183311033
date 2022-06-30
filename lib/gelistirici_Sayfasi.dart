import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobil_eczane/main.dart';

import 'Lobi2.dart';
class Sinif8 extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(


        home: Scaffold(

            backgroundColor:Colors.white ,


            body: Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [ Text('Ne yapmak istiyorsun?',style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                )),

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

              title: Text('Geliştirici:'),


            )));}}

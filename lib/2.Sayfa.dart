import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '3.Sayfa.dart';

void main() {

  runApp(Sinif3());

}
class Sinif3 extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
          centerTitle: true,
          title: Text('Mobil Eczane'))

    ),);}}
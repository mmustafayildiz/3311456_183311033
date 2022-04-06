import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '5.Sayfa.dart';
void main() {

  runApp(Sinif5());

}
class Sinif5 extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.red,
              centerTitle: true,
              title: Text('Mobil Eczaneye Hoş Geldiniz')),
          body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
        Text('""-MMY-""'),
        Image.asset('images/cicekresmi.jpg'),
        Container(
            color: Colors.blue,
            child:  Row(
                children:<Widget> [ Icon(Icons.email),Text('Sağlıklı Günler dileriz'),

    RaisedButton( child: Text('Hakkında Sayfası için tıkla.' ), onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>
          Sinif6()));
    })]
            )),

      ]),
    ),
      ),);}}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '1.Sayfa.dart';

void main() {

  runApp(MaterialApp(home: Sinif1()));
  debugShowCheckedModeBanner: false;
}

class Sinif1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    debugShowCheckedModeBanner: false;
    return Scaffold(
      
      
        backgroundColor: Colors.white, // gövdenin renk ataması

        appBar: AppBar(
          centerTitle: true, // app bar ortalaması
          backgroundColor: Colors.red[800], //appbar ın renk ataması
          title: Text('MOBİL ECZANE'),
        ), //gövde adı

        body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
               Text('""-MMY-""'),
              Image.asset('images/eczaneisareti.jpg'),
              Container(
                  color: Colors.blue,
                  child:  Row(
                      children:<Widget> [ Icon(Icons.email),Text('mmustafa.yildz01@gmail.com'),



                      ]
                  )),
             RaisedButton(
            child: Text('Devam etmek için tıklayın'),
            onPressed:(){


              Navigator.push(context, MaterialPageRoute( builder:(context)=> Sinif2()));

            })

            ]),
        ), //imaj eklediğim yer
      


      );


    





  }


}


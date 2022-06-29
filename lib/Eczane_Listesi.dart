import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'jsonveri_duzenleme.dart';
import 'db_goster.dart';



void main() {
  runApp(Eczanelistesi());
}

class Eczanelistesi extends StatefulWidget {
  @override
  _EczanelistesiState createState() => _EczanelistesiState();
}
class _EczanelistesiState extends State<Eczanelistesi>{
   late Future<List<Veriler>> veriler;
@override
void initState(){
  super.initState();
  veriler= vericekici();

}
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue,appBar: AppBar(backgroundColor: Colors.blue,
      title:new Text("İlaç Listesini Görmek İçin Tıkla.->" ,style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 17,
      )),
      actions: <Widget>[
        new IconButton(
          icon:new Icon(Icons.ads_click, color: Colors.red,size: 40) ,
          onPressed:(){

            Navigator.push(context, MaterialPageRoute( builder:(context)=> ListScreen()));
          },)
      ],
    ),

      body: FutureBuilder<List<Veriler>>(
        future: vericekici(),
        builder: (context, data) {
          if (data.hasData) {

            return ListView.builder( itemCount: data.data!.length,  itemBuilder: (context, index){

              return Card(
                child: Column(
                  children: [Text('Eczane Adı:    \n('+data.data![index].Eczane_Adi!+')',style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  )),
                    Text('Eczane Uzaklığı (Kilometre) :\n           ('+data.data![index].Eczane_Uzakligi.toString()+')',style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    )),
                    ListTile(
                      leading:Icon(Icons.medical_services,color: Colors.red ,size: 26,),
                      title: Text('      Eczane Hizmet Derecesi: \n      "'+data.data![index].Eczane_Puani.toString()+'"') ,


                    ),
                  ],
                ),
              );
            },);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobil_eczane/Lobi.dart';
import 'package:mobil_eczane/isimsifre_login.dart';
import 'package:mobil_eczane/Firebase_islemleri.dart';

class Kayitsayfasi extends StatefulWidget {
  @override
  _KayitsayfasiState createState() => _KayitsayfasiState();
}


class _KayitsayfasiState extends State<Kayitsayfasi> {
  final TextEditingController _isimController = TextEditingController();
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _sifreController = TextEditingController();
  final TextEditingController _sifreAgainController = TextEditingController();
  final TextEditingController _telefonNumarasi = TextEditingController();
  FirebaseFirestore firestore= FirebaseFirestore.instance;
  girisservisi _girisservisi = girisservisi();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:Colors.white,
        appBar: AppBar(backgroundColor:Colors.red,
          title: Text("Kayıt Sayfası",style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize:  30,
          )),

        ),
        body: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: size.height * .7,
                  width: size.width * .85,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white,
                            blurRadius: 10,
                            spreadRadius: 2)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('images/logo.jpeg', height: 103.0,),
                          TextField(
                              controller: _isimController,
                              style: TextStyle(
                                color: Colors.blueAccent,
                              ),
                              cursorColor: Colors.blueAccent,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.blueAccent,
                                ),
                                hintText: 'Kullanıcı adı',
                                prefixText: ' ',
                                hintStyle: TextStyle(color: Colors.blueAccent),
                                focusColor: Colors.blueAccent,
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blueAccent,
                                    )),
                                enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.blueAccent,
                        )),
                    )),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          TextField(
                              controller: _mailController,
                              style: TextStyle(
                color: Colors.blueAccent,
                              ),
                              cursorColor: Colors.blueAccent,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.mail,
                                  color: Colors.blueAccent,
                                ),
                                hintText: 'E-Mail',
                                prefixText: ' ',
                                hintStyle: TextStyle(color: Colors.blueAccent),
                                focusColor: Colors.white,
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blueAccent,
                                    )),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blueAccent,
                                    )),
                              )),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          TextField(
                              controller: _telefonNumarasi,
                              style: TextStyle(
                                color: Colors.blueAccent,
                              ),
                              cursorColor: Colors.blueAccent,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.phone_android,
                                  color: Colors.blueAccent,
                                ),
                                hintText: 'Telefon numarası',
                                prefixText: ' ',
                                hintStyle: TextStyle(color: Colors.blueAccent),
                                focusColor: Colors.blueAccent,
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blueAccent,
                                    )),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blueAccent,
                                    )),
                              )),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          TextField(
                              style: TextStyle(
                                color: Colors.blueAccent,
                              ),
                              cursorColor: Colors.blueAccent,
                              controller: _sifreController,
                              obscureText: true,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.vpn_key,
                                  color: Colors.blueAccent,
                                ),
                                hintText: 'Parola',
                                prefixText: ' ',
                                hintStyle: TextStyle(color: Colors.blueAccent),
                                focusColor: Colors.blueAccent,
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blueAccent,
                                    )),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blueAccent,
                                    )),
                              )),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          TextField(
                              style: TextStyle(
                                color: Colors.blueAccent,
                              ),
                              cursorColor: Colors.blueAccent,
                              controller: _sifreAgainController,
                              obscureText: true,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.vpn_key,
                                  color: Colors.blueAccent,
                                ),
                                hintText: 'Parola Tekrar',
                                prefixText: ' ',
                                hintStyle: TextStyle(color: Colors.blueAccent),
                                focusColor: Colors.blueAccent,
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blueAccent,
                                    )),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blueAccent,
                                    )),
                              )),
                          SizedBox(
                            height: size.height * 0.08,
                          ),
                          InkWell(
                            onTap: () {
                              _girisservisi
                                  .kayitol(_isimController.text, _mailController.text, _sifreController.text, _telefonNumarasi.text)
                                  .then((value) {
                                return Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Sayfa3Login()));
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blueAccent, width: 2),
                                  //color: colorPrimaryShade,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Center(
                                    child: Text(
                                      "Kaydet",
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 20,
                                      ),
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
              EdgeInsets.only(top: size.height * .06, left: size.width * .02),
              child: Align(
                alignment: Alignment.topLeft,


              ),
            )
          ],
        ));
  }
}
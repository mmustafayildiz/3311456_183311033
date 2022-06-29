import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobil_eczane/harit_yonlendirme.dart';
import 'package:mobil_eczane/GoogleHarita.dart';
import 'package:mobil_eczane/Firebase_islemleri.dart';
import 'Kayitsayfasi.dart';
void main() {

  runApp(Sayfa3Login());

}

class Sayfa3Login extends StatefulWidget {
  const Sayfa3Login({Key? key}) : super(key: key);

  @override
  State<Sayfa3Login> createState() => _Sayfa3LoginState();
}

class _Sayfa3LoginState extends State<Sayfa3Login> {
  final TextEditingController? _Adsoyad = TextEditingController();
  final TextEditingController? _Sifre = TextEditingController();
  girisservisi _girisservisi= girisservisi();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor:Colors.red,
          title: Text("Giriş Sayfası",style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 30,
          )),

        ),
        body: Center(



          child: Padding(


            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: size.height * .5,
              width: size.width * .85,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(6)),
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
                          controller: _Adsoyad!,

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
                          controller: _Sifre,
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.vpn_key,
                              color: Colors.blueAccent,
                            ),
                            hintText: 'Parola',
                            prefixText: ' ',
                            hintStyle: TextStyle(
                              color: Colors.blueAccent,
                            ),
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
                              .girisyap(
                              _Adsoyad!.text, _Sifre!.text)
                              .then((value)  {
                            return Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Sinif5()));
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueAccent, width: 2),
                              //color: colorPrimaryShade,
                              borderRadius: BorderRadius.all(Radius.circular(30))),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Center(
                                child: Text(
                                  "Giriş yap",
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 20,
                                  ),
                                )),
                          ),
                        ),
                      ),

                      SizedBox(


                        height: size.height * 0.02,
                      ),
                      InkWell(

                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Kayitsayfasi()));
                        },
                        child: Row(


                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            Container(padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent, width: 2),
                            //color: colorPrimaryShade,
                            borderRadius: BorderRadius.all(Radius.circular(30))),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Center(

                              child: Text(


                                "                        Kayıt ol                       ",
                                style: TextStyle(color: Colors.blueAccent,fontSize: 20),
                              ),

                            ),


                        ))],


                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
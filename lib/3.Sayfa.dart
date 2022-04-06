import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobil_eczane/4.Sayfa.dart';
import 'package:mobil_eczane/main.dart';

class Sayfa3Login extends StatefulWidget {
  const Sayfa3Login({Key? key}) : super(key: key);

  @override
  State<Sayfa3Login> createState() => _Sayfa3LoginState();
}

class _Sayfa3LoginState extends State<Sayfa3Login> {
  String? Adsoyad;
  String? Sifre;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key: _formKey,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.00, right: 18.00),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //yazıyı  Ortalama
          children: [
             TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    hintText:
                        'Kullanıcı Adı Soyadı:'), // çerçeveledik. ve renk verdik.
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Kullanıcı adını giriniz';
                  } else {
                    return null;
                  }
                  onSaved:
                  (value) {
                    Adsoyad = value;
                  };
                },
              ),
              // kullanıcı veri girdiğinde value kısmına atadık. // colume alt alta row ya yana sıralarrrr
            TextFormField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  hintText:
                  'Şifre:'), // çerçeveledik. ve renk verdik.
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Şifreyi giriniz.';
                } else {
                  return null;
                }
                onSaved:
                    (value) {
                  Sifre = value;
                };
              },
            ),
            _girisdugmesi()
          ], //column alt alta dizmek için.
        ),
      ),
    ));
  }

  Widget _girisdugmesi() => RaisedButton( child: Text('Oturum Aç'),   onPressed:(){

    if(_formKey.currentState!.validate()){

      _formKey.currentState!.save();
      debugPrint("Adı soyadı: $Adsoyad, şifre: $Sifre" );
      Navigator.push(context, MaterialPageRoute( builder:(context)=> Sinif5()));
    }
});
}

import 'package:flutter/material.dart';

class sayfailetisim extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _sayfailetisimState();
}

class _sayfailetisimState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.red,
        title: Text("İletişim Sayfası",style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 30,
        )),

      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              "images/logo.jpeg",
              width: 500.0,
              height: 400.0,
              fit: BoxFit.cover,
            ),
            Center(
              child: Text(
                "\n İLETİŞİM BİLGİLERİ\n",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "Mail Adres:\n mmustafa.yildiz01@gmail.com\n",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            Text("Telefon Numarası:\n 05067789703\n",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                )),
            Text("Adres:\n İstanbul Pendik",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ))
          ],
        ),
      ),
    );
  }
}

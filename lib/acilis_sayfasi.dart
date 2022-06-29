import 'package:flutter/material.dart';

import 'Lobi.dart';



void main() {
  runApp(MaterialApp(home: giris_animasyon()));
}

class giris_animasyon extends StatefulWidget {
  @override
  _BulutState createState() => _BulutState();
}

class _BulutState extends State<giris_animasyon> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
          () {
        Navigator.push(
          context,
          PageRouteBuilder(
            transitionDuration: Duration(seconds: 1),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return ScaleTransition(
                scale: animation,
                alignment: Alignment.centerRight,
                child: child,
              );
            },
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return Sinif2();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(

      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.all(60.0),
          child: Align(
            alignment: Alignment.bottomCenter,

          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/eczaneisareti2.jpg"),
            ),
          ),
        ),
      ),
    );
  }
}
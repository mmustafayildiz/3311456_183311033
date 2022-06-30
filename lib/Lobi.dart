import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobil_eczane/main.dart';
import 'Eczane_Listesi.dart';
import 'Lobi2.dart';
import 'iletisim_sayfasi.dart';
import 'isimsifre_login.dart';

void main() {

  runApp(Sinif2());

}
class Sinif2 extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(

        backgroundColor:Colors.white ,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector( onLongPress: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) =>
                Sinif5())),
                child: Image.asset('images/logo.jpeg'))
            ,
            Text('Navigasyonu açmayı unutmayınız!',style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.red,
              fontSize: 20,
            )),
            RaisedButton( color: Colors.yellow,child: anime(), onPressed :(){

              Navigator.push(context, MaterialPageRoute( builder:(context)=> Sayfa3Login()));
            }),RaisedButton(color: Colors.amber, child: anime1(), onPressed :(){

              Navigator.push(context, MaterialPageRoute( builder:(context)=> sayfailetisim()));
            }),

         // Navigator.push(context, route)
          ]







          ,),



        ),

        appBar: AppBar(
            backgroundColor: Colors.red ,
            centerTitle: true,

            title: Text('MOBİL ECZANE '),


          )




        ,));


    }}
class anime extends StatefulWidget {
  const anime({Key? key}) : super(key: key);

  @override
  State<anime> createState() => _animeState();
}

class _animeState extends State<anime> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(seconds: 20,),vsync: this);
    _animation= CurvedAnimation(parent: _controller, curve: Curves.decelerate)..addListener(()=>this.setState((){}))..addStatusListener((durum) {
      debugPrint(durum.toString());
    });
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Giriş Ekranı İçin Tıkla! ' ,style: TextStyle(
        color: Colors.red,
        fontSize: _animation.value*35,
      )),
    );
  }
}
class anime1 extends StatefulWidget {
  const anime1({Key? key}) : super(key: key);

  @override
  State<anime1> createState() => _anime1State();
}

class _anime1State extends State<anime1> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(seconds: 20,),vsync: this);
    _animation= CurvedAnimation(parent: _controller, curve: Curves.decelerate)..addListener(()=>this.setState((){}))..addStatusListener((durum) {
      debugPrint(durum.toString());
    });
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('İletişim Sayfası İçin tıkla! ' ,style: TextStyle(
        color: Colors.red,
        fontSize: _animation.value*31,
      )),
    );
  }
}

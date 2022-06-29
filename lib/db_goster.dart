import 'package:flutter/material.dart';
import 'Daire_grafil_2.dart';
import 'Lobi.dart';
import 'daire_grafik.dart';
import 'db_kayit.dart';
import 'dbhelper.dart';
import 'db_prensip.dart';

class ListScreen extends StatefulWidget {
  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  late DatabaseHandler handler;
  late Future<List<todo>> _todo;

  @override
  void initState() {
    super.initState();
    handler = DatabaseHandler();
    handler.initializeDB().whenComplete(() async {
      setState(() {
        _todo = getList();
      });
    });
  }

  Future<List<todo>> getList() async {
    return await handler.todos();
  }

  Future<void> _onRefresh() async {
    setState(() {
      _todo = getList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İlaçların Durum Listesi.    \n                Grafikler için tıkla-->",style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 19,
        )),
        actions: <Widget>[
          new IconButton(
            icon:new Icon(Icons.ads_click, color: Colors.red,size: 40) ,
            onPressed:(){

              Navigator.push(context, MaterialPageRoute( builder:(context)=> grafik2()));
            },)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Eklemeekrani()),
          );
        },

        child: Icon(Icons.add_box),
        backgroundColor: Colors.deepOrange,
      ),
      body: FutureBuilder<List<todo>>(
        future: _todo,
        builder: (BuildContext context, AsyncSnapshot<List<todo>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return new Center(
              child: new CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return new Text('Hata: ${snapshot.error}');
          } else {
            final items = snapshot.data ?? <todo>[];
            return new Scrollbar(
              child: RefreshIndicator(
                onRefresh: _onRefresh,
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Dismissible(
                      direction: DismissDirection.startToEnd,
                      background: Container(
                        color: Colors.red,
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: const Icon(Icons.delete_forever),
                      ),
                      key: ValueKey<int>(items[index].id),
                      onDismissed: (DismissDirection direction) async {
                        await handler.deletetodo(items[index].id);
                        setState(() {
                          items.remove(items[index]);
                        });
                      },
                      child: Card(
                          child: Column(

                            children: [
                            Text('İlaç Adı: ('+items[index].title+')',style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                            )),
                            Text('İlaç Miktarı: ('+items[index].description+' '+'adet)',style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                            )),
                              ListTile(
                                leading:Icon(Icons.medical_information,color: Colors.red ,size: 26,),
                                title: Text('Kırmızı Reçete:  EVET.',style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 20,
                                )),


                              ),
                             // Text(),
                          ])),
                    );
                  },
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
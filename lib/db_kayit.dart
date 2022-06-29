import 'dart:math';
import 'package:flutter/material.dart';
import 'db_goster.dart';
import 'dbhelper.dart';
import 'db_prensip.dart';

class Eklemeekrani extends StatefulWidget {
  @override
  _EklemeekraniState createState() => _EklemeekraniState();
}

class _EklemeekraniState extends State<Eklemeekrani> {
  final _formKey = GlobalKey<FormState>();
  String title = "";
  String description = "";
  String sok= "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İlaç Kayıt Sayfası'),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'İlaç Adını Giriniz';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  hintText: 'İlaç Adı:',
                ),
                onChanged: (value) {
                  setState(() {
                    title = value;
                  });
                },
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'İlaç Stok Sayısını giriniz';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  hintText: 'İlaç Stok Sayısı:',
                ),
                onChanged: (value) {
                  setState(() {
                    description = value;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    await DatabaseHandler()
                        .inserttodo(todo(
                        title: title,
                        description: description,
                        id: Random().nextInt(50)))
                        .whenComplete(() => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListScreen()),
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text(
                  'EKLE',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
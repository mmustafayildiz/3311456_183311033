import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;
class Veriler{
  final String?  Eczane_Adi;
  final String?  Eczane_Uzakligi;
  final String? Eczane_Puani;


Veriler({this.Eczane_Adi,this.Eczane_Uzakligi,this.Eczane_Puani});

  factory Veriler.fromJson(Map<String, dynamic>json ){
    return Veriler(Eczane_Adi: json['Eczane_Adi'],Eczane_Uzakligi: json['Eczane_Uzakligi'],Eczane_Puani: json['Eczane_Puani']);
  }

}

Future<List<Veriler>> vericekici() async {
  final response = await http.get(Uri.parse('https://gist.githubusercontent.com/mmustafayildiz/5945a3b599003d835d7434c78bc487aa/raw/79cb1b13d5a3ce13bfbb66e037c2cd54b6fe79c8/eczanelistesi01_gor.json'));
  if (response.statusCode == 200) {
   // return Veriler.fromJson(json.decode(response.body));
    return (jsonDecode(response.body)as List).map((sendData){
      return Veriler?.fromJson(sendData);
    }).toList();
  } else {
    throw Exception('Başarısız :(');
  }
}

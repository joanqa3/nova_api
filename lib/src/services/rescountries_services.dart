import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/paisos_model.dart';

class ResCountriesServices {
  Paisos paisosModel = Paisos();

  Future<void> getCountries() async {
    //var url = Uri.parse("https://restcountries.com/v2/name/peru");
    //var url = Uri.parse("https://restcountries.com/v2/all");
    var url = Uri.parse("https://restcountries.com/v2/all");
    print(url.toString());
    await http.get(url).then((response) {
      //print("ORIGEN");
      //print(response.body);
      final List<dynamic> bodyDecoded = jsonDecode(response.body);

      //print("REBENT");
      //print(bodyDecoded);
      final paises = bodyDecoded.map((element) {
        try {
          return Paisos.fromJson(element);
        } catch (e) {
          return Paisos();
        }
      });

      //print("INSTANCIA");
      //print(paises);
      final List<Paisos> listPaises = paises.toList();

      //print("TO LIST");
      //print(listPaises);
//
      for (var i = 0; i < listPaises.length; i++) {
        if (listPaises[i].name != null) {
          print(
              "Nombre: ${listPaises[i].name} / Habitantes: ${listPaises[i].population}");
        }
      }
    }).catchError((err) {
      print(err);
    });
  }
}

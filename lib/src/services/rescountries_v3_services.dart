import 'dart:convert';
import 'package:http/http.dart' as http;
//import '../models/paisos_model.dart';
import '../models/all_v3_clean_model.dart';

class ResCountriesV3Services {
  AllV3Clean paisosModel = AllV3Clean();

  Future<void> getCountries() async {
    /*
    Future<String> var1() async {
      return "object";
    }
    String var2 = await var1();
    print(var2);
    */

    //var url = Uri.parse("https://restcountries.com/v2/name/peru");
    //var url = Uri.parse("https://restcountries.com/v2/all");
    var url = Uri.parse("https://restcountries.com/v3/all");
    //var url = Uri.parse("https://restcountries.com/v3/name/peru");
    print(url.toString());
    await http.get(url).then((response) {
      // print("ORIGEN");
      // print(response.body);
      final List<dynamic> bodyDecoded = jsonDecode(response.body);

      //print("REBENT");
      //print(bodyDecoded);
      final paises = bodyDecoded.map((element) {
        try {
          return AllV3Clean.fromJson(element);
        } catch (e) {
          return AllV3Clean();
        }
      });

      //print("INSTANCIA");
      //print(paises);
      final List<AllV3Clean> listPaises = paises.toList();

      //print("TO LIST");
      //print(listPaises);

      print("FINAL LIMPIO");

      for (var i = 0; i < listPaises.length; i++) {
        if (listPaises[i].name != null) {
          print(
              "Nombre: ${listPaises[i].name?.official} / Habitantes: ${listPaises[i].population}");
        }
      }
    }).catchError((err) {
      print(err);
    });
  }
}

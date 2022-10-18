import 'dart:io';
// v2
import 'package:nova_api/src/services/rescountries_services.dart';
// v3
import 'package:nova_api/src/services/rescountries_v3_services.dart';

void main() async {
  String continuar = 'y';
  String? iversion;
  do {
    stdout.writeln('Hola, ¿Que API quieres usar v2 o v3?');
    iversion = stdin.readLineSync();
    if (iversion == "2" || iversion == "v2") {
      print('¡ Perfecto esta es la respuesta para : $iversion !');
      await ResCountriesServices().getCountries();
    } else if (iversion == "3" || iversion == "v3") {
      print('¡ Perfecto esta es la respuesta para : $iversion !');
      await ResCountriesV3Services().getCountries();
    } else {
      print('Error : $iversion');
      stdout.writeln("Api versión no correcta o no existe");
    }

    if (iversion == "v2" ||
        iversion == "v3" ||
        iversion == "2" ||
        iversion == "3") {
      stdout.writeln('¿Deseas continuar? (y/n)?');
    }
    continuar = stdin.readLineSync()!;
  } while (continuar == 'y');
}

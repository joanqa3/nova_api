//import 'package:nova_api/src/models/paisos_model%20copy.dart';

import 'currencies_model.dart';
import 'flags_model.dart';
import 'languages_model.dart';
import 'regionalblocs_model.dart';
import 'translations_model.dart';

class Paisos {
  String? name;
  List<String>? topLevelDomain;
  String? alpha2Code;
  String? alpha3Code;
  List<String>? callingCodes;
  String? capital;
  List<String>? altSpellings;
  String? subregion;
  String? region;
  int? population;
  List<double>? latlng;
  String? demonym;
  double?
      area; // este tiene que ser double ojo porque depende del origen podria creer es integer
  double? gini;
  List<String>? timezones;
  List<String>? borders;
  String? nativeName;
  String? numericCode;
  Flags? flags;
  List<Currencies>? currencies;
  List<Languages>? languages;
  Translations? translations;
  String? flag;
  List<RegionalBlocs>? regionalBlocs;
  String? cioc;
  bool? independent;

  Paisos(
      {this.name,
      this.topLevelDomain,
      this.alpha2Code,
      this.alpha3Code,
      this.callingCodes,
      this.capital,
      this.altSpellings,
      this.subregion,
      this.region,
      this.population,
      this.latlng,
      this.demonym,
      this.area,
      this.gini,
      this.timezones,
      this.borders,
      this.nativeName,
      this.numericCode,
      this.flags,
      this.currencies,
      this.languages,
      this.translations,
      this.flag,
      this.regionalBlocs,
      this.cioc,
      this.independent});

  Paisos.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    topLevelDomain = json['topLevelDomain'].cast<String>();
    alpha2Code = json['alpha2Code'];
    alpha3Code = json['alpha3Code'];
    callingCodes = json['callingCodes'].cast<String>();
    capital = json['capital'];
    altSpellings = json['altSpellings'].cast<String>();
    subregion = json['subregion'];
    region = json['region'];
    population = json['population'];
    latlng = json['latlng'].cast<double>();
    demonym = json['demonym'];
    area = json['area'];
    gini = json['gini'];
    timezones = json['timezones'].cast<String>();
    borders = json['borders'].cast<String>();
    nativeName = json['nativeName'];
    numericCode = json['numericCode'];
    flags = json['flags'] != null ? Flags?.fromJson(json['flags']) : null;
    if (json['currencies'] != null) {
      currencies = <Currencies>[];
      json['currencies'].forEach((v) {
        currencies?.add(Currencies.fromJson(v));
      });
    }
    if (json['languages'] != null) {
      languages = <Languages>[];
      json['languages'].forEach((v) {
        languages?.add(Languages.fromJson(v));
      });
    }
    translations = json['translations'] != null
        ? Translations?.fromJson(json['translations'])
        : null;
    flag = json['flag'];
    if (json['regionalBlocs'] != null) {
      regionalBlocs = <RegionalBlocs>[];
      json['regionalBlocs'].forEach((v) {
        regionalBlocs?.add(RegionalBlocs.fromJson(v));
      });
    }
    cioc = json['cioc'];
    independent = json['independent'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['topLevelDomain'] = topLevelDomain;
    data['alpha2Code'] = alpha2Code;
    data['alpha3Code'] = alpha3Code;
    data['callingCodes'] = callingCodes;
    data['capital'] = capital;
    data['altSpellings'] = altSpellings;
    data['subregion'] = subregion;
    data['region'] = region;
    data['population'] = population;
    data['latlng'] = latlng;
    data['demonym'] = demonym;
    data['area'] = area;
    data['gini'] = gini;
    data['timezones'] = timezones;
    data['borders'] = borders;
    data['nativeName'] = nativeName;
    data['numericCode'] = numericCode;
    if (flags != null) {
      data['flags'] = flags?.toJson();
    }
    if (currencies != null) {
      data['currencies'] = currencies?.map((v) => v.toJson()).toList();
    }
    if (languages != null) {
      data['languages'] = languages?.map((v) => v.toJson()).toList();
    }
    if (translations != null) {
      data['translations'] = translations?.toJson();
    }
    data['flag'] = flag;
    if (regionalBlocs != null) {
      data['regionalBlocs'] = regionalBlocs?.map((v) => v.toJson()).toList();
    }
    data['cioc'] = cioc;
    data['independent'] = independent;
    return data;
  }
}

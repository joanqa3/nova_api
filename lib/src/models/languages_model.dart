class Languages {
  String? iso6391;
  String? iso6392;
  String? name;
  String? nativeName;

  Languages({this.iso6391, this.iso6392, this.name, this.nativeName});

  Languages.fromJson(Map<String, dynamic> json) {
    iso6391 = json['iso639_1'];
    iso6392 = json['iso639_2'];
    name = json['name'];
    nativeName = json['nativeName'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['iso639_1'] = iso6391;
    data['iso639_2'] = iso6392;
    data['name'] = name;
    data['nativeName'] = nativeName;
    return data;
  }
}

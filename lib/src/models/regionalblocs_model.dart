class RegionalBlocs {
  String? acronym;
  String? name;
  //List<String>? otherNames;
  //List<String>? otherAcronyms;

  RegionalBlocs({
    this.acronym,
    this.name,
    //this.otherNames,
    //this.otherAcronyms,
  });

  RegionalBlocs.fromJson(Map<String, dynamic> json) {
    acronym = json['acronym'];
    name = json['name'];
    //otherNames = json['otherNames'].cast<String>();
    //otherAcronyms = json['otherAcronyms'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['acronym'] = acronym;
    data['name'] = name;
    //data['otherNames'] = otherNames;
    //data['otherAcronyms'] = otherAcronyms;
    return data;
  }
}

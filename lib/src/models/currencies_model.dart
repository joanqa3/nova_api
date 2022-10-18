class Currencies {
  String? code;
  String? name;
  String? symbol;

  Currencies({this.code, this.name, this.symbol});

  Currencies.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
    symbol = json['symbol'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['code'] = code;
    data['name'] = name;
    data['symbol'] = symbol;
    return data;
  }
}

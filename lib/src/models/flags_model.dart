class Flags {
  String? svg;
  String? png;

  Flags({this.svg, this.png});

  Flags.fromJson(Map<String, dynamic> json) {
    svg = json['svg'];
    png = json['png'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['svg'] = svg;
    data['png'] = png;
    return data;
  }
}

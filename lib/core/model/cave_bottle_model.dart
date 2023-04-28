import 'dart:core';

class CaveBottle {
  final int id;
  final String name;
  final String image;
  String designation;
  String country;
  String province;
  String winery;
  String variety;

  CaveBottle(
      {required this.id,
      required this.name,
      required this.image,
      required this.designation,
      required this.country,
      required this.province,
      required this.winery,
      required this.variety});
  factory CaveBottle.fromJson(Map<String, dynamic> json) {
    return CaveBottle(
        id: json['id'],
        name: json['name'],
        image: json['image'],
        designation: json['designation'],
        country: json['country'],
        province: json['province'],
        winery: json['winery'],
        variety: json['variety']);
  }
}

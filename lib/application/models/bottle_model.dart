class BottleModel {
  final String title;
  final String description;
  final int price;
  final String designation;
  final String variety;
  final String region_1;
  final String province;
  final String country;
  final String winery;

  BottleModel({
    required this.title,
    required this.description,
    required this.price,
    required this.designation,
    required this.variety,
    required this.region_1,
    required this.province,
    required this.country,
    required this.winery,
  });

  factory BottleModel.fromJson(Map<String, dynamic> json) {
    return BottleModel(
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as int,
      designation: json['designation'] ?? "",
      variety: json['variety'] as String,
      region_1: json['region_1'] as String,
      province: json['province'] as String,
      country: json['country'] as String,
      winery: json['winery'] as String,
    );
  }
}

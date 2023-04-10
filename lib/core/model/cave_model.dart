import 'bottle_model.dart';

class Cave {
  final int id;
  final String name;
  final String? image;
  final String? description;
  List<Bottle> bottles;
  final DateTime creationdate;

  Cave(
      {required this.id,
      required this.name,
      this.image,
      this.description,
      this.bottles = const [],
      required this.creationdate});

  factory Cave.fromJson(Map<String, dynamic> json) {
    return Cave(
        id: json['id'],
        name: json['name'],
        image: json['image'],
        description: json['description'],
        bottles: json['bottles'] == null
            ? []
            : (json['bottles'])
                .map((bottle) => Bottle.fromJson(bottle))
                .toList(),
        creationdate: DateTime.parse(json['created_at']));
  }
}

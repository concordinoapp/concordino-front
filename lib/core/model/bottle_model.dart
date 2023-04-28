class Bottle {
  final String name;
  int quantity = 1;
  final String? image;
  final DateTime date;

  addBottle() {
    quantity += 1;
  }

  decreaseBottle() {
    if (quantity > 0) quantity -= 1;
  }

  Bottle({
    required this.name,
    required this.quantity,
    this.image,
    required this.date,
  });

  factory Bottle.fromJson(Map<String, dynamic> json) {
    return Bottle(
      name: json['name'],
      quantity: json['quantity'] ?? 1,
      image: json['image'],
      date: DateTime.parse(json['date'] ?? DateTime.now().toString()),
    );
  }
}

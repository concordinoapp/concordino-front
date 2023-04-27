class Bottle {
  final String name;
  int quantity;
  // final String? image;
  // final DateTime date;

  addBottle() {
    // var tmpQuantity = int.parse(quantity);
    // tmpQuantity +=1;
    // quantity = tmpQuantity.toString();
  }

  decreaseBottle() {
    // var tmpQuantity = int.parse(quantity);
    // if (tmpQuantity > 0) tmpQuantity -= 1;
    // quantity = tmpQuantity.toString();
  }

  Bottle({
    required this.name,
    required this.quantity,
    // this.image,
    // required this.date,
  });

  factory Bottle.fromJson(Map<String, dynamic> json) {
      // var test = json['bottle_obj']["quantity"];
    return Bottle(
      name: json['name'],
      quantity: json['bottle_obj']['quantity'],
      // image: json['image'],
      // date: DateTime.parse(json['bottle_obj']["year"]),
    );
  }
}

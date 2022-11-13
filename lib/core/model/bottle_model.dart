class Bottle {
  final String name;
  int quantity;
  final String image;
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
    required this.image,
    required this.date,
  });
}

// lib/item.dart
class Item {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final double? price;

  Item({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    this.price,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id']?.toString() ?? '',
      title: json['name'] ?? '',
      description: json['description'] ?? '',
      imageUrl: json['image'] ?? '',
      price: (json['price'] is num) ? (json['price'] as num).toDouble() : null,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': title,
        'description': description,
        'image': imageUrl,
        'price': price,
      };

  @override
  String toString() =>
      'Item(id: $id, title: $title, price: $price, image: $imageUrl)';
}

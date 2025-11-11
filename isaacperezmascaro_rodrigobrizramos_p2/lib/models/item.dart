class Item {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final Map<String, dynamic>? extras;

  const Item({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    this.extras,
  });
}

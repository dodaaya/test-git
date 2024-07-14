class Product {
  final String title;
  final String description;
  final String imageUrl;
  final double price;
  final double rating;

  Product({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.rating,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      title: json['title'],
      description: json['description'],
      imageUrl: json['image'],
      price: json['price'].toDouble(),
      rating: json['rating'].toDouble(),
    );
  }
}

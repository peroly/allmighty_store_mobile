// To parse this JSON data, do
//
//     final productEntry = productEntryFromJson(jsonString);

import 'dart:convert';

ProductEntry productEntryFromJson(String str) =>
    ProductEntry.fromJson(json.decode(str));

String productEntryToJson(ProductEntry data) => json.encode(data.toJson());

class ProductEntry {
  String id;
  String name;
  int stock;
  int price;
  String description;
  String category;
  String thumbnail;
  bool isFeatured;
  int userId;

  ProductEntry({
    required this.id,
    required this.name,
    required this.stock,
    required this.price,
    required this.description,
    required this.category,
    required this.thumbnail,
    required this.isFeatured,
    required this.userId,
  });

  factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
    id: json["id"] ?? "",
    name: json["name"] ?? "",
    stock: json["stock"] ?? 0,
    price: json["price"] ?? 0,
    description: json["description"] ?? "",
    category: json["category"] ?? "",
    thumbnail: json["thumbnail"] ?? "",
    isFeatured: json["is_featured"] ?? "",
    userId: json["user_id"] ?? 0,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "stock": stock,
    "price": price,
    "description": description,
    "category": category,
    "thumbnail": thumbnail,
    "is_featured": isFeatured,
    "user_id": userId,
  };
}

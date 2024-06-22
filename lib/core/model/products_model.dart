//import 'package:hive_flutter/hive_flutter.dart';
import 'package:homewrksta/core/model/handilling.dart';
import 'package:hive/hive.dart';
import 'dart:convert';
part 'products_model.g.dart';

@HiveType(typeId: 0)
class ProductModel extends ResultModel {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final double price;
  @HiveField(4)
  final String image;
  @HiveField(5)
  final String brand;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.brand,
  });

  ProductModel copyWith({
    int? id,
    String? name,
    String? description,
    double? price,
    String? image,
    String? brand,
  }) =>
      ProductModel(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        price: price ?? this.price,
        image: image ?? this.image,
        brand: brand ?? this.brand,
      );

  factory ProductModel.fromRawJson(String str) =>
      ProductModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"]?.toDouble(),
        image: json["image"],
        brand: json["brand"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "image": image,
        "brand": brand,
      };
}

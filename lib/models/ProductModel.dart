import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  int? currentPage;
  List<Datum>? data;

  ProductModel({
    this.currentPage,
    this.data,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    currentPage: json["current_page"],
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "current_page": currentPage,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class Datum {
  int? id;
  int? categoryId;
  int? brandId;
  String? name;
  int? isTrendy;
  int? isAvailable;
  int? price;
  int? amount;
  dynamic discount;
  String? image;
  DateTime? createdAt;
  DateTime? updatedAt;

  Datum({
    this.id,
    this.categoryId,
    this.brandId,
    this.name,
    this.isTrendy,
    this.isAvailable,
    this.price,
    this.amount,
    this.discount,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    categoryId: json["category_id"],
    brandId: json["brand_id"],
    name: json["name"],
    isTrendy: json["is_trendy"],
    isAvailable: json["is_available"],
    price: json["price"],
    amount: json["amount"],
    discount: json["discount"],
    image: json["image"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "category_id": categoryId,
    "brand_id": brandId,
    "name": name,
    "is_trendy": isTrendy,
    "is_available": isAvailable,
    "price": price,
    "amount": amount,
    "discount": discount,
    "image": image,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}

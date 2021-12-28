// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

List<Products> productsFromJson(String str) => List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

String productsToJson(List<Products> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Products {
    Products({
        this.id,
        this.name,
        this.age,
        this.address,
        this.image,
        this.arrivalDate,
    });

    String id;
    String name;
    String age;
    String address;
    String image;
    DateTime arrivalDate;

    factory Products.fromJson(Map<String, dynamic> json) => Products(
        id: json["id"],
        name: json["name"],
        age: json["age"],
        address: json["address"],
        image: json["image"],
        arrivalDate: DateTime.parse(json["arrival_date"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "age": age,
        "address": address,
        "image": image,
        "arrival_date": "${arrivalDate.year.toString().padLeft(4, '0')}-${arrivalDate.month.toString().padLeft(2, '0')}-${arrivalDate.day.toString().padLeft(2, '0')}",
    };
}

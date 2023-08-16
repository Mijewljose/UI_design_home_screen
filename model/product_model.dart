import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int id;
  final Color color;
  Product({
    required this.image,
    required this.title,
    required this.color,
    required this.id,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Learning",
    image: "assets/images/graphics.png",
    color: Color.fromARGB(255, 186, 107, 28),
  ),
  Product(
    id: 2,
    title: "Games",
    image: "assets/images/games.png",
    color: Color.fromARGB(255, 55, 16, 145),
  ),
  Product(
    id: 3,
    title: "Routine",
    image: "assets/images/images.png",
    color: Color.fromARGB(255, 234, 199, 25),
  ),
];

import 'package:flutter/material.dart';

class Product {
  final int id;
  final String image;
  final String title;
  final String description;
  final double price;
  final Color color;

  Product(this.id, this.image, this.title, this.description, this.price,
      this.color);
}

final String description =
    'Maecenas vel arcu quis ligula luctus consequat.Phasellus vel sagittis massa. Morbi sed accumsan nibh\n.Blandit leo at, vehicula tortor. Nulla mauris ipsum. Phasellus eget eros suscipit, dapibus leo at';
final double price = 245.0;

List<Product> product = [
  Product(
      1, 'assets/watch/1.png', 'Platinum Bag', description, price, colors[0]),
  Product(
      2, 'assets/watch/2.png', 'Platinum Bag', description, price, colors[1]),
  Product(
      3, 'assets/watch/12.png', 'Platinum Bag', description, price, colors[2]),
  Product(
      4, 'assets/watch/4.png', 'Platinum Bag', description, price, colors[3]),
  Product(
      5, 'assets/watch/5.png', 'Platinum Bag', description, price, colors[4]),
  Product(
      6, 'assets/watch/6.png', 'Platinum Bag', description, price, colors[5]),
  Product(
      7, 'assets/watch/7.png', 'Platinum Bag', description, price, colors[6]),
  Product(
      8, 'assets/watch/8.png', 'Platinum Bag', description, price, colors[7]),
  Product(
      9, 'assets/watch/14.png', 'Platinum Bag', description, price, colors[8]),
  Product(
      10, 'assets/watch/10.png', 'Platinum Bag', description, price, colors[9]),
];

final List<Color> colors = [
  Color(0xFF3B81AE),
  Color(0xFFD3A983),
  Color(0xFF999393),
  Color(0xFFE3B195),
  Color(0xFFFE7680),
  Color(0xFFAEAEAE),
  Color(0xFF183547),
  Color(0xFF999393),
  Color(0xFF3879A3),
  Color(0xFFE3B195),
];

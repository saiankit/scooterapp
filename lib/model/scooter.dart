import 'package:flutter/material.dart';
import 'package:scooterapp/utilities/styling.dart';

class Scooter {
  final String name;
  final String imageURL;
  final int maxSpeed;
  final int range;
  final int price;
  final Color color;

  Scooter({
    required this.name,
    required this.imageURL,
    required this.maxSpeed,
    required this.range,
    required this.price,
    required this.color,
  });
}

List<Scooter> scooterData = [
  Scooter(
    name: 'Bgauss DCF-07',
    imageURL: 'assets/img1.png',
    maxSpeed: 135,
    range: 200,
    price: 45,
    color: AppTheme.greenColor,
  ),
  Scooter(
    name: 'Bgauss RD-567',
    imageURL: 'assets/img2.png',
    maxSpeed: 135,
    range: 200,
    price: 45,
    color: AppTheme.lightGreenColor,
  ),
  Scooter(
    name: 'Bgauss DCF-07',
    imageURL: 'assets/img1.png',
    maxSpeed: 135,
    range: 200,
    price: 45,
    color: AppTheme.greenColor,
  ),
  Scooter(
    name: 'Bgauss RD-567',
    imageURL: 'assets/img2.png',
    maxSpeed: 135,
    range: 200,
    price: 45,
    color: AppTheme.lightGreenColor,
  ),
];

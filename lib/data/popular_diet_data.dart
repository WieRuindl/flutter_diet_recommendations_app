import 'package:flutter/material.dart';
import 'package:flutter_fitness_food_app/models/diet_model.dart';

class PopularDietsData {
  List<DietModel> data = [
    DietModel(
      name: 'Blueberry Pancake',
      iconPath: 'assets/icons/blueberry-pancake.svg',
      level: 'Medium',
      duration: '30mins',
      calories: '230kCal',
      backgroundColor: Colors.pink,
    ),
    DietModel(
      name: 'Salmon Nigiri',
      iconPath: 'assets/icons/salmon-nigiri.svg',
      level: 'Easy',
      duration: '20mins',
      calories: '120kCal',
      backgroundColor: Colors.pink,
    ),
  ];
}

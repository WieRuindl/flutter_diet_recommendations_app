import 'package:flutter/material.dart';
import 'package:flutter_fitness_food_app/models/diet_model.dart';

class DietsData {
  List<DietModel> data = [
    DietModel(
        name: 'Honey Pancake',
        iconPath: 'assets/icons/honey-pancakes.svg',
        level: 'Easy',
        duration: '30m',
        calories: '180kCal',
        backgroundColor: const Color(0xff9DCEFF)),
    DietModel(
        name: 'Canai Bread',
        iconPath: 'assets/icons/canai-bread.svg',
        level: 'Easy',
        duration: '20m',
        calories: '230kCal',
        backgroundColor: const Color(0xffEEA4CE))
  ];
}

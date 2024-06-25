import 'package:flutter/material.dart';
import 'package:flutter_fitness_food_app/models/category_model.dart';

class CategoriesData {
  final List<CategoryModel> categories = [
    CategoryModel(
        name: 'Salad',
        iconPath: 'assets/icons/plate.svg',
        backgroundColor: const Color(0xff9DCEFF)
    ),

    CategoryModel(
        name: 'Cake',
        iconPath: 'assets/icons/pancakes.svg',
        backgroundColor: const Color(0xffEEA4CE)
    ),

    CategoryModel(
        name: 'Pie',
        iconPath: 'assets/icons/pie.svg',
        backgroundColor: const Color(0xff9DCEFF)
    ),

    CategoryModel(
        name: 'Smoothies',
        iconPath: 'assets/icons/orange-snacks.svg',
        backgroundColor: const Color(0xffEEA4CE)),
  ];
}

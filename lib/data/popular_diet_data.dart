import 'package:flutter_fitness_food_app/models/popular_diet_model.dart';

class PopularDietsData {
  List<PopularDietModel> popularDiets = [
    PopularDietModel(
      name: 'Blueberry Pancake',
      iconPath: 'assets/icons/blueberry-pancake.svg',
      level: 'Medium',
      duration: '30mins',
      calories: '230kCal',
      boxIsSelected: true,
    ),
    PopularDietModel(
      name: 'Salmon Nigiri',
      iconPath: 'assets/icons/salmon-nigiri.svg',
      level: 'Easy',
      duration: '20mins',
      calories: '120kCal',
      boxIsSelected: false,
    ),
  ];
}

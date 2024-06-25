import 'package:flutter/material.dart';
import 'package:flutter_fitness_food_app/components/my_app_bar.dart';
import 'package:flutter_fitness_food_app/components/my_diets_list.dart';
import 'package:flutter_fitness_food_app/components/my_popular_diets_list.dart';
import 'package:flutter_fitness_food_app/components/my_search_bar.dart';
import 'package:flutter_fitness_food_app/components/my_categories_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(),
      body: ListView(
        children: [
          const MySearchBar(),
          const SizedBox(height: 40,),
          MyCategoriesList(),
          const SizedBox(height: 40,),
          MyDietsList(),
          const SizedBox(height: 40,),
          MyPopularDietsList(),
        ],
      ),
    );
  }
}

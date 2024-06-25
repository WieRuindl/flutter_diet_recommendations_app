import 'package:flutter/material.dart';
import 'package:flutter_fitness_food_app/components/my_app_bar.dart';
import 'package:flutter_fitness_food_app/components/my_search_bar.dart';
import 'package:flutter_fitness_food_app/components/my_categories_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MySearchBar(),
          const SizedBox(height: 40,),
          Column(
            children: [
              MyCategoriesList(),
            ],
          ),
        ],
      ),
    );
  }
}

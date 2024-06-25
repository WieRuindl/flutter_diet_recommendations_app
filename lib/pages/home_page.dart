import 'package:flutter/material.dart';
import 'package:flutter_fitness_food_app/components/my_app_bar.dart';
import 'package:flutter_fitness_food_app/components/my_search_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: MyAppBar(),
      ),
      body: Column(
        children: [
          MySearchBar(),
        ],
      ),
    );
  }
}

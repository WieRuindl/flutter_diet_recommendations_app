import 'package:flutter/material.dart';
import 'package:flutter_fitness_food_app/data/categories_data.dart';
import 'package:flutter_fitness_food_app/data/diets_data.dart';
import 'package:flutter_fitness_food_app/models/category_model.dart';
import 'package:flutter_fitness_food_app/models/diet_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyDietsList extends StatelessWidget {
  MyDietsList({super.key});

  final List<DietModel> diets = DietsData().diets;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Recommendation\nfor Diet',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 15,),
        SizedBox(
          height: 240,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, right: 20,),
            itemCount: diets.length,
            separatorBuilder: (context, index) => const SizedBox(width: 15,),
            itemBuilder: (context, index) {
              return Container(
                width: 210,
                decoration: BoxDecoration(
                  color: diets[index].backgroundColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(diets[index].iconPath),
                    Column(
                      children: [
                        Text(
                          diets[index].name,
                          style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 16,),
                        ),
                        Text(
                          '${diets[index].level} | ${diets[index].duration} | ${diets[index].calories}',
                          style: TextStyle(
                            color: diets[index].viewIsSelected ? Colors.white : const Color(0xffC58BF2),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Container(
                      width: 130,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(
                          colors: [
                            diets[index].viewIsSelected ? const Color(0xff9DCEFF) : Colors.transparent,
                            diets[index].viewIsSelected ? const Color(0xff92A3FD) : Colors.transparent
                          ]
                        )
                      ),
                      child: const Center(
                        child: Text(
                          'View',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

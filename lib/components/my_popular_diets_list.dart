import 'package:flutter/material.dart';
import 'package:flutter_fitness_food_app/data/popular_diet_data.dart';
import 'package:flutter_fitness_food_app/models/popular_diet_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyPopularDietsList extends StatelessWidget {
  MyPopularDietsList({super.key});

  final List<PopularDietModel> popularDiets = PopularDietsData().popularDiets;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Popular',
              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 15),
          ListView.separated(
            // scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            padding: const EdgeInsets.only(left: 20, right: 20,),
            itemCount: popularDiets.length,
            separatorBuilder: (context, index) => const SizedBox(height: 25,),
            itemBuilder: ( context, index) {
              return Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff1D1617).withOpacity(0.07),
                      offset: const Offset(0, 10),
                      blurRadius: 40, 
                      spreadRadius: 0,
                    )
                  ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      popularDiets[index].iconPath,
                      width: 65,
                      height: 65,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          popularDiets[index].name,
                          style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '${popularDiets[index].level} | ${popularDiets[index].duration} | ${popularDiets[index].calories}',
                          style: const TextStyle(color: Color(0xff7B6F72), fontSize: 13, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () { print('TAP'); },
                      child: SvgPicture.asset(
                        'assets/icons/button.svg',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ]
                ),
              );
            },

          )
        ],
      ),
    );
  }
}

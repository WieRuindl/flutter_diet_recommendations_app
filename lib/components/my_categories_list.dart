import 'package:flutter/material.dart';
import 'package:flutter_fitness_food_app/data/categories_data.dart';
import 'package:flutter_fitness_food_app/models/category_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCategoriesList extends StatelessWidget {
  MyCategoriesList({super.key});

  final List<CategoryModel> categories = CategoriesData().categories;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20,),
          child: Text(
            'Category',
            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600,),
          ),
        ),
        const SizedBox(height: 15,),
        SizedBox(
          height: 120,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, right: 20,),
            itemCount: categories.length,
            separatorBuilder: (context, index) => const SizedBox(width: 15,),
            itemBuilder: (context, index) {
              return Container(
                width: 100,
                decoration: BoxDecoration(
                  color: categories[index].backgroundColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(categories[index].iconPath),
                      ),
                    ),
                    Text(
                      categories[index].name,
                      style: const TextStyle(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 14,),
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

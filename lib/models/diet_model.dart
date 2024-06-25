
import 'package:flutter/material.dart';

class DietModel {
  final String name;
  final String iconPath;
  final String level;
  final String duration;
  final String calories;
  final Color backgroundColor;
  final bool viewIsSelected;

  DietModel({required this.name, required this.iconPath, required this.level, required this.duration, required this.calories, required this.backgroundColor, required this.viewIsSelected});
}

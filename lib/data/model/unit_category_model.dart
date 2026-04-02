import 'package:flutter/material.dart';

import '../../domain/entities/unit_category.dart';

class UnitCategoryModel extends UnitCategory {
  const UnitCategoryModel({
    required super.name,
    required super.iconData,
    required super.units,
  });

  //length meter ,kilometer,centimeter,millimeter,foot,inch
  // weight gram,kilogram,pound,ounce
  // temperature celsius,fahrenheit,kelvin
  static const List<UnitCategoryModel> allCategories = [
    UnitCategoryModel(
      name: 'Length',
      iconData: Icons.straighten,
      units: ['Meter', 'Kilometer', 'Centimeter', 'Millimeter', 'Foot', 'Inch'],
    ),
    UnitCategoryModel(
      name: 'Weight',
      iconData: Icons.fitness_center,
      units: ['Gram', 'Kilogram', 'Pound', 'Ounce'],
    ),
    UnitCategoryModel(
      name: 'Temperature',
      iconData: Icons.thermostat,
      units: ['Celsius', 'Fahrenheit', 'Kelvin'],
    ),
  ];
  static double convert({
    required double value,
    required String fromUnit,
    required String toUnit,
    required String categoryName,
  }) {
    if (fromUnit == toUnit) return value;

    switch (categoryName) {
      case 'Length':
        return 0.00; //_convertLength(value, fromUnit, toUnit);
      case 'Weight':
        return 0.00; //_convertWeight(value, fromUnit, toUnit);
      case 'Temperature':
        return 0.00; //_convertTemperature(value, fromUnit, toUnit);
      default:
        return value;
    }
  }

}

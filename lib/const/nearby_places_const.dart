import 'package:flutter/material.dart';

class NearbyPlacesConst {
  static const String noSpecialPreference = "No Special Preference";
  static const String vegan = "Vegan";
  static const String lactoVegetarian = "Lacto-Vegetarian";
  static const String pescatarian = "Pescatarian";
  static const String halal = "Halal";
  static const String kosher = "Kosher";
  static const String eggFree = "Egg-Free";
  static const String dairyFree = "Dairy-Free";

  static List<String> nearbyPlacesTexts = [
    "No Special Preference",
    "Vegan",
    "Lacto-Vegetarian",
    "Pescatarian",
    "Halal",
    "Kosher",
    "Egg-Free",
    "Dairy-Free",
  ];
}

class NearbyPlacesIconsConst {
  static const Map<String, IconData> nearbyPlacesIcons = {
    "No Special Preference": Icons.not_interested,
    "Vegan": Icons.eco,
    "Lacto-Vegetarian": Icons.local_florist,
    "Pescatarian": Icons.set_meal,
    "Halal": Icons.restaurant_menu,
    "Kosher": Icons.verified_user,
    "Egg-Free": Icons.egg,
    "Dairy-Free": Icons.no_meals,
  };
}

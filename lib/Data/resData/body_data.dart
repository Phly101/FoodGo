

import 'package:food_go/Models/resModel/body_model.dart';

class BodyData {

  static BodyModel? getRestaurantById(final int id) {
    try {
      return sampleRestaurants.firstWhere((final restaurant) => restaurant.id == id);
    } catch (e) {
      return null;
    }
  }

  static final List<BodyModel> sampleRestaurants = [
    BodyModel(
      id: 1,
      resName: 'Rose Garden Restaurant',
      mealItems: ['Burger', 'Chicken', 'Rice', 'Wings'],
      rating: 4.7,
      delivery: 'Free',
    ),
    BodyModel(
      id: 2,
      resName: 'The Pizza House',
      mealItems: ['Pizza', 'Pasta', 'Sides'],
      rating: 4.9,
      delivery: '5 min',
    ),
    BodyModel(
      id: 3,
      resName: 'Wok Master',
      mealItems: ['Noodle', 'Rice', 'Asian Fusion'],
      rating: 4.2,
      delivery: '15 min',
      resDetails:
      'Wok Master has been serving authentic Asian Fusion dishes for over a decade. Our specialty is the signature Dragon Noodle bowl, prepared fresh daily with locally sourced ingredients. Experience the taste of the Orient!',
    ),
    BodyModel(
      id: 4,
      resName: 'Grill Nation',
      mealItems: ['Steak', 'Burger', 'BBQ'],
      rating: 4.6,
      delivery: '10 min',
    ),
    BodyModel(
      id: 5,
      resName: 'Sweet Spot Desserts',
      mealItems: ['Cake', 'Ice Cream', 'Coffee'],
      rating: 4.8,
      delivery: 'Free',
    ),
  ];
}
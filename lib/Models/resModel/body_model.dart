

class BodyModel {
  final int id;
  final String? resDetails;
  final String resName;

  final List<String> mealItems;
  final num rating;
  final String delivery;

  BodyModel( {
    required this.id,
    required this.resName,
    required this.delivery,
    required this.mealItems,
    required this.rating,
    this.resDetails,
  });
}
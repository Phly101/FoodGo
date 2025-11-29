class MenuItemModel {
  final int id;
  final String category;
  final String title;
  final String restaurant;
  final double price;
  final String imageUrl;
  final String itemDetails;
  final List<String>? itemSizes;
  final bool hasSizes;

  MenuItemModel( {
    required this.itemDetails,
    required this.id,
    required this.category,
    required this.title,
    required this.restaurant,
    required this.price,
    required this.imageUrl,
    required this.hasSizes,
    this.itemSizes
  });
}
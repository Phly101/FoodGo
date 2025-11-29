import 'package:food_go/Models/resMenuModel/menu_item_model.dart';


class CartItemModel {
  final MenuItemModel item;
  final int quantity;
  final String? selectedSize;

  CartItemModel({
    required this.item,
    required this.quantity,
    this.selectedSize,
  });


  CartItemModel copyWith({
    final int? quantity,
    final String? selectedSize,
  }) {
    return CartItemModel(
      item: item,
      quantity: quantity ?? this.quantity,
      selectedSize: selectedSize ?? this.selectedSize,
    );
  }
  String get uniqueId => '${item.id}_${selectedSize ?? 'default'}';
  double get subtotal => item.price * quantity;
}
part of 'cart_bloc.dart';

sealed class CartEvent extends Equatable {
  const CartEvent();
  @override
  List<Object> get props => [];
}

final class CartAddItem extends CartEvent {
  final MenuItemModel menuItem;
  final int quantity;
  final String? selectedSize;
  const CartAddItem(this.menuItem, {this.selectedSize, this.quantity=1, });

}

final class CartSubtractItem extends CartEvent {
  final String cartItemUniqueId;
  const CartSubtractItem(this.cartItemUniqueId);
  @override
  List<Object> get props => [cartItemUniqueId];
}

final class CartDeleteItem extends CartEvent {
  final String cartItemUniqueId;
  const CartDeleteItem(this.cartItemUniqueId);
  @override
  List<Object> get props => [cartItemUniqueId];
}

final class CartClear extends CartEvent {}

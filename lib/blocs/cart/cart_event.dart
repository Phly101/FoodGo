part of 'cart_bloc.dart';

sealed class CartEvent extends Equatable {
  const CartEvent();
  @override
  List<Object> get props => [];
}

final class CartAddItem extends CartEvent {
  final MenuItemModel menuItem;
  final String? selectedSize;
  const CartAddItem(this.menuItem, {this.selectedSize});

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

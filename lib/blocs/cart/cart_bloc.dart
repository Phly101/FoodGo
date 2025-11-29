import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/Models/cartModel/cart_item_model.dart';
import 'package:food_go/Models/resMenuModel/menu_item_model.dart';

part 'cart_event.dart';

part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final List<CartItemModel> _cartItems = [];

  CartBloc() : super(CartInitial()) {
    on<CartAddItem>(_onAddItem);
    on<CartSubtractItem>(_onSubtractItem);
    on<CartDeleteItem>(_onDeleteItem);
    on<CartClear>(_onClearCart);
  }


  void _emitUpdatedCartState(final Emitter<CartState> emit) {
    if (_cartItems.isEmpty) {
      emit(CartEmpty());
      return;
    }

    final double total = _cartItems.fold(
      0.0,
          (final sum, final item) => sum + item.subtotal,
    );

    final int count = _cartItems.fold(
      0,
          (final sum, final item) => sum + item.quantity,
    );

    emit(CartHasData(List.unmodifiable(_cartItems), total, count));
  }


  void _onAddItem(final CartAddItem event, final Emitter<CartState> emit) {
    emit(CartLoading());

    final tempCartItem = CartItemModel(
      item: event.menuItem,
      quantity: event.quantity,
      selectedSize: event.selectedSize,
    );

    final uniqueId = tempCartItem.uniqueId;

    final index = _cartItems.indexWhere(
          (final item) => item.uniqueId == uniqueId,
    );

    if (index != -1) {

      final existingItem = _cartItems[index];
      _cartItems[index] = existingItem.copyWith(
        quantity: existingItem.quantity + event.quantity,
      );
    } else {

      _cartItems.add(tempCartItem);
    }

    _emitUpdatedCartState(emit);
  }


  void _onSubtractItem(
    final CartSubtractItem event,
    final Emitter<CartState> emit,
  ) {
    emit(CartLoading());
    final index = _cartItems.indexWhere(
      (final item) => item.uniqueId == event.cartItemUniqueId,
    );

    if (index != -1) {
      final existingItem = _cartItems[index];
      if (existingItem.quantity > 1) {
        _cartItems[index] = existingItem.copyWith(
          quantity: existingItem.quantity - 1,
        );
      } else {
        _cartItems.removeAt(index);
      }
    }
    _emitUpdatedCartState(emit);
  }

  void _onDeleteItem(
    final CartDeleteItem event,
    final Emitter<CartState> emit,
  ) {
    emit(CartLoading());
    _cartItems.removeWhere(
      (final item) => item.uniqueId == event.cartItemUniqueId,
    );
    _emitUpdatedCartState(emit);
  }

  void _onClearCart(final CartClear event, final Emitter<CartState> emit) {
    emit(CartLoading());
    _cartItems.clear();
    _emitUpdatedCartState(emit);
  }
}

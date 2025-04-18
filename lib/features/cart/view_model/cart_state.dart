part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}

// counter
final class CounterDecremented extends CartState {
    final int value;
  CounterDecremented(this.value);
}
final class CounterIncremented extends CartState {
    final int value;
  CounterIncremented(this.value);
}

// get cart
final class CartLoadingState extends CartState {}
final class CartSuccessState extends CartState {}
final class CartErrorState extends CartState {
  String? error;

  CartErrorState({required this.error});
}

// final class AddToCartLoadingState extends CartState {}
// final class AddToCartSuccessState extends CartState {}
// final class AddToCartErrorState extends CartState {
//   String? error;
//
//   AddToCartErrorState({required this.error});
// }

final class DeleteFromCartLoadingState extends CartState {}
final class DeleteFromCartSuccessState extends CartState {}
final class DeleteFromCartErrorState extends CartState {
  String? error;

  DeleteFromCartErrorState({required this.error});
}

part of 'cart_bloc.dart';

@immutable
sealed class CartState {}

abstract class CartActionState extends CartState {}

class CartInitial extends CartState {}

class CartLoadingState extends CartState {
  CartLoadingState();
}

class CartItemRemoved extends CartState {}


class CartSuccessState extends CartState {
  
  final List<Medicine> cartitems;
  final int matchingProductCount;
  

  CartSuccessState({required this.cartitems, required this.matchingProductCount});
  
}
class CartProductIdsState extends CartState {
 
}

class CartErrorState extends CartState {
  final String error;

  CartErrorState({required this.error});
}
class Cartitemnumberss extends CartState{
  final int val;


  Cartitemnumberss({required this.val});}
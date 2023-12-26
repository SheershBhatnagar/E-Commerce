
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'badge_state.dart';

class BadgeCubit extends Cubit<BadgeState> {
  BadgeCubit() : super(BadgeInitial());

  static BadgeCubit get(context) => BlocProvider.of(context);

  int cartBadge = 0;
  int wishlistBadge = 0;

  void getNoOfItemsCart(int noOfItems) {
    cartBadge = noOfItems;
    emit(CartBadgeState());
  }

  void getNoOfItemsNotifications(int noOfItems) {
    wishlistBadge = noOfItems;
    emit(WishlistBadgeState());
  }
}

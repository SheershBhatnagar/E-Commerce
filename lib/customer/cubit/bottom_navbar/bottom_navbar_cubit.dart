
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottom_navbar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarInitial());

  static BottomNavBarCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  void changeBottomNavBar(int index) {
    currentIndex = index;
    emit(BottomNavBarState());
  }
}

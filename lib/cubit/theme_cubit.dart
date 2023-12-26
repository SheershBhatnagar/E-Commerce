
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends HydratedCubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  bool isDark = false;

  static ThemeCubit get(context) => BlocProvider.of(context);

  void changeTheme(bool dark) {
    isDark = dark;
    emit(ChangeTheme());
  }
  
  @override
  ThemeState fromJson(Map<String, dynamic> json) {
    return json['isDark'];
  }
  
  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    return {
      'isDark': isDark,
    };
  }
}


import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'package:e_commerce/cubit/theme_cubit.dart';
import 'package:e_commerce/customer/cubit/badge/badge_cubit.dart';
import 'package:e_commerce/customer/cubit/bottom_navbar/bottom_navbar_cubit.dart';
import 'package:e_commerce/customer/screens/home_screen.dart';
import 'package:e_commerce/screens/auth/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  _lockOrientation();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  runApp(const MyApp());
}

void _lockOrientation() async {
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BadgeCubit>(
          create: (context) => BadgeCubit(),
        ),
        BlocProvider<BottomNavBarCubit>(
          create: (context) => BottomNavBarCubit(),
        ),
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {

          var themeCubit = ThemeCubit.get(context);

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'E Commerce',
            theme: themeCubit.isDark ? ThemeData.dark(
              useMaterial3: true,
            ) : ThemeData.light(
              useMaterial3: true,
            ),
            home: const LoginScreen(),
          );
        },
      ),
    );
  }
}

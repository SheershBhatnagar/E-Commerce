
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:e_commerce/cubit/theme_cubit.dart';
import 'package:e_commerce/customer/widgets/appbar_customer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBarCustomer(
          page: 5,
          pageName: 'Settings',
        ),
      ),
      body: Column(
        children: [
          BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {

              var themeCubit = ThemeCubit.get(context);

              return ListTile(
                leading: themeCubit.isDark ? const Icon(Icons.dark_mode_rounded) : const Icon(Icons.light_mode_rounded),
                title: const Text(
                  'Theme',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                  ),
                ),
                trailing: Switch(
                  value: ThemeCubit.get(context).isDark,
                  onChanged: (value) {
                    ThemeCubit.get(context).changeTheme(value);
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

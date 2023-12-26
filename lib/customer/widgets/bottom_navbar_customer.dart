
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:e_commerce/cubit/theme_cubit.dart';
import 'package:e_commerce/customer/cubit/badge/badge_cubit.dart';
import 'package:e_commerce/customer/cubit/bottom_navbar/bottom_navbar_cubit.dart';
import 'package:e_commerce/utils/strings.dart';

class BottomNavBarCustomer extends StatefulWidget {

  const BottomNavBarCustomer({
    super.key,
  });

  @override
  State<BottomNavBarCustomer> createState() => _BottomNavBarCustomerState();
}

class _BottomNavBarCustomerState extends State<BottomNavBarCustomer> {
  
  @override
  Widget build(BuildContext context) {

    var badgeCubit = BadgeCubit.get(context);
    var navCubit = BottomNavBarCubit.get(context);
    var themeCubit = ThemeCubit.get(context);

    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      builder: (context, state) {
        return BottomNavigationBar(
          onTap: (int index) {
            navCubit.changeBottomNavBar(index);
          },
          backgroundColor: Colors.transparent,
          currentIndex: navCubit.currentIndex,
          elevation: 0,
          enableFeedback: true,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          showSelectedLabels: false,
          selectedIconTheme: const IconThemeData(
            color: Colors.blue,
            size: 30,
          ),
          unselectedIconTheme: IconThemeData(
            color: themeCubit.isDark ? Colors.white : Colors.black,
          ),
          items: [
            BottomNavigationBarItem(
              icon: navCubit.currentIndex == 0 ? const Icon(Icons.home) : const Icon(Icons.home_outlined),
              label: Strings().home,
            ),
            BottomNavigationBarItem(
              icon: navCubit.currentIndex == 1 ? const Icon(Icons.favorite_rounded) : const Icon(Icons.favorite_border_rounded),
              label: Strings().wishlist,
            ),
            BottomNavigationBarItem(
              icon: navCubit.currentIndex == 2 && badgeCubit.cartBadge != 0 ? Badge(
                label: Text(
                  badgeCubit.cartBadge.toString(),
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                  ),
                ),
                child: const Icon(Icons.shopping_cart,),
              ) : navCubit.currentIndex == 2 && badgeCubit.cartBadge == 0 ? const Icon(
                Icons.shopping_cart,
              ) : navCubit.currentIndex != 2 && badgeCubit.cartBadge != 0 ? Badge(
                label: Text(
                  badgeCubit.cartBadge.toString(),
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                  ),
                ),
                child: const Icon(Icons.shopping_cart_outlined,),
              ) : navCubit.currentIndex != 2 && badgeCubit.cartBadge == 0 ? const Icon(
                Icons.shopping_cart_outlined,
              ) : const SizedBox(),
              label: Strings().cart,
            ),
            BottomNavigationBarItem(
              icon: const CircleAvatar(
                radius: 12,
                backgroundImage: NetworkImage(
                  'https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg',
                ),
              ),
              label: Strings().profile,
            ),
          ],
        );
      },
    );
  }
}

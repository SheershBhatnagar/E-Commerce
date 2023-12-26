
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:e_commerce/customer/cubit/bottom_navbar/bottom_navbar_cubit.dart';
import 'package:e_commerce/customer/screens/categories_screen.dart';
import 'package:e_commerce/customer/screens/orders_screen.dart';
import 'package:e_commerce/customer/screens/pages.dart';
import 'package:e_commerce/customer/screens/wishlist_screen.dart';
import 'package:e_commerce/customer/widgets/bottom_navbar_customer.dart';
import 'package:e_commerce/customer/widgets/nav_drawer_customer_mobile.dart';
import 'package:e_commerce/screens/contact_us.dart';
import 'package:e_commerce/screens/help_screen.dart';
import 'package:e_commerce/screens/profile_screen.dart';
import 'package:e_commerce/screens/settings_screen.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isHovering = false;

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;

    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(

      builder: (context, state) {

        var cubit = BottomNavBarCubit.get(context);

        return Scaffold(
          drawer: width <= 450 ? const NavDrawerCustomerMobile() : null,
          body: width <= 450 ? IndexedStack(
            index: cubit.currentIndex,
            children: Pages.bottomTabBarPages,
          ) : width >= 450 && width <= 1024 ? Row(
            children: [
              Container(
                width: isHovering ? 1200 : null,
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
                      },
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg',
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {}, 
                      icon: const Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {}, 
                      icon: const Icon(
                        Icons.category_rounded,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {}, 
                      icon: const Icon(
                        Icons.favorite_rounded,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {}, 
                      icon: const Icon(
                        Icons.shopping_cart_rounded,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {}, 
                      icon: const Icon(
                        Icons.shopping_cart_checkout_rounded,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {}, 
                      icon: const Icon(
                        Icons.settings_outlined,
                        color: Colors.white,
                      ),
                    ),
                    const Divider(),
                    IconButton(
                      onPressed: () {}, 
                      icon: const Icon(
                        Icons.help_outline_rounded,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {}, 
                      icon: const Icon(
                        Icons.phone_in_talk_outlined,
                        color: Colors.white,
                      ),
                    ),
                    const Divider(),
                    IconButton(
                      onPressed: () {}, 
                      icon: const Icon(
                        Icons.logout_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: IndexedStack(
                  index: cubit.currentIndex,
                  children: Pages.bottomTabBarPages,
                ),
              ),
            ],
          ) : Row(
            children: [
              Container(
                width: 180,
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(
                          bottom: 20,
                        ),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                            'https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg',
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                      },
                      leading: const Icon(
                        Icons.home_filled,
                        color: Colors.white,
                      ),
                      title: const Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
                      },
                      leading: const Icon(
                        Icons.person_rounded,
                        color: Colors.white,
                      ),
                      title: const Text(
                        'Profile',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const CategoriesScreen()));
                      },
                      leading: const Icon(
                        Icons.category_rounded,
                        color: Colors.white,
                      ),
                      title: const Text(
                        'Categories',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const WishlistScreen()));
                      },
                      leading: const Icon(
                        Icons.favorite_rounded,
                        color: Colors.white,
                      ),
                      title: const Text(
                        'Wishlist',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    // ListTile(
                    //   onTap: () {
                    //     Navigator.push(context, MaterialPageRoute(builder: (context) => const CartScreen()));
                    //   },
                    //   leading: const Icon(
                    //     Icons.shopping_cart_rounded,
                    //     color: Colors.white,
                    //   ),
                    //   title: const Text(
                    //     'Cart',
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //     ),
                    //   ),
                    // ),
                    ListTile(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const OrdersScreen()));
                      },
                      leading: const Icon(
                        Icons.shopping_cart_checkout_rounded,
                        color: Colors.white,
                      ),
                      title: const Text(
                        'Orders',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsScreen()));
                      },
                      leading: const Icon(
                        Icons.settings_rounded,
                        color: Colors.white,
                      ),
                      title: const Text(
                        'Settings',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const HelpScreen()));
                      },
                      leading: const Icon(
                        Icons.help_rounded,
                        color: Colors.white,
                      ),
                      title: const Text(
                        'Help & Support',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ContactUsScreen()));
                      },
                      leading: const Icon(
                        Icons.phone_in_talk_rounded,
                        color: Colors.white,
                      ),
                      title: const Text(
                        'Contact Us',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      onTap: () {
                        
                      },
                      leading: const Icon(
                        Icons.logout_rounded,
                        color: Colors.white,
                      ),
                      title: const Text(
                        'Logout',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: IndexedStack(
                  index: cubit.currentIndex,
                  children: Pages.bottomTabBarPages,
                ),
              ),
            ],
          ),
          bottomNavigationBar: width <= 450 ? const BottomNavBarCustomer() : null,
        );
      },
    );
  }
}

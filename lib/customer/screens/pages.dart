
import 'package:flutter/material.dart';

import 'package:e_commerce/customer/screens/cart_screen.dart';
import 'package:e_commerce/customer/screens/explore_screen.dart';
import 'package:e_commerce/customer/screens/wishlist_screen.dart';
import 'package:e_commerce/screens/profile_screen.dart';

class Pages {

  static List<Widget> bottomTabBarPages = [
    const ExploreScreen(),
    const WishlistScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];
}

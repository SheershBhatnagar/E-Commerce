
import 'package:flutter/material.dart';

import 'package:e_commerce/customer/widgets/appbar_customer.dart';
import 'package:e_commerce/customer/widgets/nav_drawer_customer_mobile.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBarCustomer(
          page: 1,
        ),
      ),
      drawer: width <= 450 ? const NavDrawerCustomerMobile() : null,
      body: const Center(
        child: Text('Wishlist Screen'),
      ),
    );
  }
}

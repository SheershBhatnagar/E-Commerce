
import 'package:flutter/material.dart';

import 'package:e_commerce/customer/widgets/appbar_customer.dart';
import 'package:e_commerce/customer/widgets/nav_drawer_customer_mobile.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBarCustomer(
          page: 0,
        ),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              'Item ${index + 1}',
              style: const TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
          );
        },
      ),
      drawer: width <= 450 ? const NavDrawerCustomerMobile() : null,
    );
  }
}

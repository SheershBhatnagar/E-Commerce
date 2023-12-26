
import 'package:flutter/material.dart';

import 'package:e_commerce/customer/widgets/appbar_customer.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight), 
        child: AppBarCustomer(
          page: 5,
          pageName: 'Categories',
        ),
      ),
      body: Center(
        child: Text('Categories Screen'),
      ),
    );
  }
}

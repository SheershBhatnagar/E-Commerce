
import 'package:flutter/material.dart';

import 'package:e_commerce/customer/widgets/appbar_customer.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        return Future.delayed(
          const Duration(seconds: 1),
          () {
            print('Refreshed');
          },
        );
      },
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight), 
          child: AppBarCustomer(
            page: 5,
            pageName: 'Orders',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: ListView.builder(
            itemCount: 25,
            itemBuilder: (BuildContext context, int index) {
              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}

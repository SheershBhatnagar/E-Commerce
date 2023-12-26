
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:e_commerce/customer/cubit/badge/badge_cubit.dart';
import 'package:e_commerce/customer/widgets/appbar_customer.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    int itemCount = 20;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBarCustomer(
          page: 5,
          pageName: 'Notifications',
          isNotifications: false,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
        ),
        child: BlocListener<BadgeCubit, BadgeState>(
          listener: (context, state) {
            
            var cubit = BadgeCubit.get(context);
            cubit.getNoOfItemsNotifications(itemCount);
          },
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: itemCount,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(
                  'Notification ${index + 1}',
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

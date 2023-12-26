
import 'package:e_commerce/customer/cubit/badge/badge_cubit.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce/customer/screens/search_screen.dart';
import 'package:e_commerce/screens/notifications_screen.dart';
import 'package:e_commerce/utils/strings.dart';

class AppBarCustomer extends StatelessWidget {

  final int page;

  final String pageName;

  final bool isNotifications;
  final bool isSearch;

  const AppBarCustomer({
    super.key,
    required this.page,
    this.pageName = '',
    this.isNotifications = true,
    this.isSearch = true,
  });

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;

    var cubit = BadgeCubit.get(context);

    return AppBar(
        title: Text(
          page == 0 ? Strings().explore : page == 1 ? Strings().wishlist : page == 2 ? Strings().cart : page == 3 ? Strings().profile : pageName,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          isSearch && width <= 450 ? IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen()));
            },
            icon: const Icon(
              Icons.search,
            ),
          ) : isSearch ? Padding(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: SizedBox(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  hintText: Strings().search,
                ),
              ),
            ),
          ) : const SizedBox(),
          isNotifications ? IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationsScreen()));
            },
            icon: cubit.wishlistBadge != 0 ? Badge(
              label: Text(
                cubit.wishlistBadge.toString(),
                style: const TextStyle(
                  fontFamily: 'Poppins',
                ),
              ),
              child: const Icon(
                Icons.notifications_none_rounded,
              ),
            ) : const Icon(
              Icons.notifications_none_rounded,
            ),
          ) : const SizedBox(),
        ],
      );
  }
}


import 'package:flutter/material.dart';

import 'package:e_commerce/customer/widgets/appbar_customer.dart';
import 'package:e_commerce/customer/widgets/nav_drawer_customer_mobile.dart';
import 'package:e_commerce/utils/strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBarCustomer(
          page: 3,
        ),
      ),
      drawer: width <= 450 ? const NavDrawerCustomerMobile() : null,
      body: SingleChildScrollView(
        child: SizedBox(
          height: height,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 24,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage('https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg'),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: IconButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.blue,
                        ),
                        shape: MaterialStateProperty.all(
                          const CircleBorder(),
                        ),
                      ),
                      icon: const Icon(
                        Icons.edit_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Sheersh Bhatnagar',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'i@sheershbhatnagar.me',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              const Text(
                '+91 9119239769',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  // backgroundColor: Colors.blue,
                ),
                child: Text(
                  Strings().switchToSelling,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

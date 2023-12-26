
import 'package:flutter/material.dart';

import 'package:e_commerce/customer/widgets/appbar_customer.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight), 
        child: AppBarCustomer(
          page: 5,
          pageName: 'Contact Us',
        ),
      ),
      body: Center(
        child: Text('Contact Us Screen'),
      ),
    );
  }
}


import 'package:e_commerce/customer/widgets/appbar_customer.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight), 
        child: AppBarCustomer(
          page: 5,
          pageName: 'Help',
        ),
      ),
      body: Center(
        child: Text('Help Screen'),
      ),
    );
  }
}

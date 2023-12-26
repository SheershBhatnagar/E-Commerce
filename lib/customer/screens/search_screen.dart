
import 'package:flutter/material.dart';

import 'package:e_commerce/customer/widgets/appbar_customer.dart';
import 'package:e_commerce/widgets/search_textfield.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBarCustomer(
          page: 5, 
          pageName: 'Search',
          isSearch: false,
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: SearchTextField(),
          ),
          const SizedBox(
            height: 24,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: const Icon(
                      Icons.person,
                    ),
                    title: Text(
                      'Search Result ${index + 1}',
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

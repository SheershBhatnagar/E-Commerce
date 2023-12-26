
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController searchController = TextEditingController();

    return TextFormField(
      autocorrect: true,
      autofocus: true,
      controller: searchController,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        fillColor: Colors.grey[200],
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 0,
        ),
        suffixIcon: IconButton(
          onPressed: () {
            searchController.clear();
          },
          icon: const Icon(
            Icons.clear,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

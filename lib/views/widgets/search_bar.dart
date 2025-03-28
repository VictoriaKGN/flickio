// Flutter & Dart
import 'package:flutter/material.dart';

class MovieSearchBar extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  final TextEditingController? controller;

  const MovieSearchBar({
    super.key,
    this.hintText = "Search",
    required this.onChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 600;

    return isMobile
        ? _searchTextField(context)
        : SizedBox(width: 300, child: _searchTextField(context));
  }

  Widget _searchTextField(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(
          Icons.search,
          color: Theme.of(context).colorScheme.tertiary,
        ),
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
        ),
      ),
      style: TextStyle(fontWeight: FontWeight.w100),
    );
  }
}

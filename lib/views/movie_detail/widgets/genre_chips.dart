// Flutter
import 'package:flutter/material.dart';

// Models
import '../../../models/genre.dart';

class GenreChips extends StatelessWidget {
  final List<Genre> genres;

  GenreChips({super.key, required this.genres});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30,
      runSpacing: 10,
      children:
          genres.map((genre) {
            return Chip(
              label: Text(
                genre.name,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              backgroundColor: Theme.of(context).colorScheme.tertiary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
                side: BorderSide(style: BorderStyle.none),
              ),
            );
          }).toList(),
    );
  }
}

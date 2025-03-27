// Flutter & Dart
import 'package:flutter/material.dart';

// Models
import '../../models/genre.dart';

class GenreFilter extends StatelessWidget {
  final List<Genre> genres;
  final Genre? selected;
  final ValueChanged<Genre?> onSelect;

  const GenreFilter({
    super.key,
    this.genres = allGenres,
    this.selected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        separatorBuilder: (_, _) => const SizedBox(width: 20),
        itemBuilder: (context, index) {
          final genre = genres[index];
          final isSelected = genre == selected;

          return ChoiceChip(
            label: Text(
              genre.name,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color:
                    isSelected
                        ? Theme.of(context).colorScheme.onSecondary
                        : Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
            selected: isSelected,
            onSelected: (_) => onSelect(isSelected ? null : genre),
            selectedColor: Theme.of(context).colorScheme.secondary,
            showCheckmark: false,
            backgroundColor: Theme.of(context).colorScheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: BorderSide(style: BorderStyle.none),
            ),
          );
        },
      ),
    );
  }
}

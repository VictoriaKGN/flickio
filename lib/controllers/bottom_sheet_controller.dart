// Flutter
import 'package:flutter/material.dart';

// Model
import '../models/movie.dart';

class BottomSheetController {
  final ValueNotifier<bool> isVisible = ValueNotifier(false);
  final ValueNotifier<Movie?> data = ValueNotifier(null);

  void show(Movie movie) {
    data.value = movie;
    isVisible.value = true;
  }

  void hide() {
    data.value = null;
    isVisible.value = false;
  }
}

final bottomSheetController = BottomSheetController();

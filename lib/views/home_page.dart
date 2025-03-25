// Flutter
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Widgets
import 'widgets/movie_section.dart';

// View Models
import '../viewmodels/home_viewmodel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<HomeViewModel>(context);

    return ListView(
      padding: const EdgeInsets.only(top: 100, bottom: 40, left: 40, right: 40),
      children: [
        // MovieSection(title: "Trending", movies: vm.trending),
        MovieSection(title: "In Theaters", movies: vm.nowPlaying),
        // MovieSection(title: "Upcoming", movies: vm.upcoming),
      ],
    );
  }
}

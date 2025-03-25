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
      padding: const EdgeInsets.only(bottom: 80),
      children: [
        // MovieSection(title: "Trending", movies: vm.trending),
        MovieSection(title: "Now Playing", movies: vm.nowPlaying),
        // MovieSection(title: "Upcoming", movies: vm.upcoming),
      ],
    );
  }
}

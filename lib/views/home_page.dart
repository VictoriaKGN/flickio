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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 100),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.only(
              top: 0,
              bottom: 40,
              left: 40,
              right: 40,
            ),
            scrollDirection: Axis.vertical,
            children: [
              MovieSection(title: "Trending", movies: vm.trending),
              MovieSection(title: "In Theaters", movies: vm.nowPlaying),
              MovieSection(title: "Popular", movies: vm.popular),
              MovieSection(title: "Top Rated", movies: vm.topRated),
              MovieSection(title: "Upcoming", movies: vm.upcoming),
            ],
          ),
        ),
      ],
    );
  }
}

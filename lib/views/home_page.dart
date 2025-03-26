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
          child: ListView.separated(
            padding: const EdgeInsets.only(
              top: 0,
              bottom: 40,
              left: 40,
              right: 40,
            ),
            scrollDirection: Axis.vertical,
            itemCount: 5,
            itemBuilder: (context, index) {
              final sections = [
                ("Trending", vm.trending),
                ("In Theaters", vm.nowPlaying),
                ("Popular", vm.popular),
                ("Top Rated", vm.topRated),
                ("Upcoming", vm.upcoming),
              ];

              final (title, movies) = sections[index];
              return MovieSection(title: title, movies: movies);
            },
            separatorBuilder: (context, index) => const SizedBox(height: 35),
          ),
        ),
      ],
    );
  }
}

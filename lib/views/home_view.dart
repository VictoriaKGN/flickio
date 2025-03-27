// Flutter
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Widgets
import 'widgets/movie_section.dart';
import 'widgets/nav_bar.dart';

// View Models
import '../viewmodels/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<HomeViewModel>(context);
    final isMobile = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 100,
          bottom: 0,
          left: 40,
          right: 40,
        ),
        child: Expanded(
          child: ListView.separated(
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
      ),
    );
  }
}

// Flutter
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Widgets
import 'widgets/movie_section.dart';
import 'widgets/nav_bar.dart';

// View Models
import '../viewmodels/home_viewmodel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<HomeViewModel>(context);
    final isMobile = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // if NOT mobile
          if (!isMobile)
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: NavBar(selectedIndex: 0),
            ),

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

          // if mobile
          if (isMobile)
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: NavBar(selectedIndex: 0),
            ),
        ],
      ),
    );
  }
}

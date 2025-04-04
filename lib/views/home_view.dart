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
        padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 40),
        child: Expanded(
          child: ListView.separated(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            itemCount: 5,
            itemBuilder: (context, index) {
              final (title, movies) = vm.sections[index];
              return MovieSection(title: title, fetchMovies: movies);
            },
            separatorBuilder: (context, index) => const SizedBox(height: 35),
          ),
        ),
      ),
    );
  }
}

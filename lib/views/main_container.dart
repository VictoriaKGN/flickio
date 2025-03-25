// Flutter
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Widgets
import 'widgets/nav_bar.dart';

// Views
import 'home_page.dart';

// View Models
import 'package:flickio/viewmodels/home_viewmodel.dart';

class MainContainer extends StatefulWidget {
  const MainContainer({super.key});

  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  int _selectedIndex = 0;

  final List<String> _pages = ['Home', 'Browse', 'Watchlist'];

  Widget _buildCurrentPage() {
    switch (_selectedIndex) {
      case 0:
        return ChangeNotifierProvider(
          // create: (_) => HomeViewModel(MovieApiService()),
          create: (_) => HomeViewModel(),
          child: const HomePage(),
        );
      // return Center(child: Text('🏠 Home Page'));
      case 1:
        return Center(child: Text('🔍 Browse Page'));
      case 2:
        return Center(child: Text('📃 Watchlist Page'));
      default:
        return SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;
    final navBar = NavBar(
      pages: _pages,
      selected: _selectedIndex,
      onTabSelect: (index) {
        setState(() => _selectedIndex = index);
      },
    );

    return Scaffold(
      body: Column(
        children: [
          // if NOT mobile
          if (!isMobile)
            Padding(padding: const EdgeInsets.only(top: 20), child: navBar),

          Expanded(child: _buildCurrentPage()),

          // if mobile
          if (isMobile)
            Padding(padding: const EdgeInsets.only(bottom: 20), child: navBar),
        ],
      ),
    );
  }
}

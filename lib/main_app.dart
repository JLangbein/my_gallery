import 'package:flutter/material.dart';
import 'gallery_screen.dart';
import 'profile_screen.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  // states (attributes)
  int _currentIndex = 0;
  static const List<Widget> screens = [GalleryScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    var colorScheme2 = ColorScheme.fromSeed(seedColor: Colors.teal);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: colorScheme2,
        appBarTheme: AppBarTheme(
          backgroundColor: colorScheme2.primary,
          foregroundColor: colorScheme2.onPrimary
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: true,
          title: Text(
            'MyGallery',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
         // backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.image), label: 'Images'),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: 'About Me',
            ),
          ],
          selectedIndex: _currentIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: screens[_currentIndex],
      ),
    );
  }
}

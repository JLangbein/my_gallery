import 'package:flutter/material.dart';
import 'package:my_gallery/gallery_screen.dart';
import 'image_class.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: GalleryScreen(),
    );
  }
}

import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  // attributes
  final String imagePath;
  final String title;
  final String date;
  final String description;

  const DetailScreen({
    super.key,
    required this.imagePath,
    required this.title,
    required this.date,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        automaticallyImplyLeading: true,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 16.0,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(imagePath, fit: BoxFit.contain, cacheHeight: 800),
            Padding(
              padding: EdgeInsetsGeometry.all(16.0),
              child: Column(
                spacing: 8.0,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(title, style: Theme.of(context).textTheme.titleLarge),
                  Text(date, style: Theme.of(context).textTheme.titleSmall),
                  SelectableText(description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

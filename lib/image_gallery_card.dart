import 'package:flutter/material.dart';
import 'detail_screen.dart';

class ImageGalleryCard extends StatelessWidget {
  // attributes
  final String imagePath;
  final String title;
  final String date;
  final String description;

  const ImageGalleryCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.date,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              imagePath: imagePath,
              title: title,
              date: date,
              description: description,
            ),
          ),
        );
      },
      child: Card(
        color: Theme.of(context).colorScheme.surfaceContainer,
        elevation: 3.0,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
                cacheHeight: 400,
              ),
            ),
            Container(
              color: Theme.of(context).colorScheme.secondaryContainer,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.titleMedium),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

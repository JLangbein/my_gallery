import 'package:flutter/material.dart';
import 'image_gallery_card.dart';
import 'image_list.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.count(
        crossAxisCount: 2,
        children: imageList
            .map(
              (currentImage) => ImageGalleryCard(
                imagePath: currentImage.imagePath,
                title: currentImage.title,
              ),
            )
            .toList(),
      ),
    );
  }
}

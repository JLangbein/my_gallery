class Image {
  // attributes
  String imagePath;
  String title;
  String date;
  String description = 'No Description';

  // constructor
  Image(
    this.description, {
    required this.imagePath,
    required this.title,
    required this.date,
  });
}

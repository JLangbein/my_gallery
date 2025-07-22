class Image {
  // attributes
  Image image;
  String title;
  String date;
  String description = 'No Description';

  // constructor
  Image(
    this.description, {
    required this.image,
    required this.title,
    required this.date,
  });
}

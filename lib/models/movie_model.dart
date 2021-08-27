class MovieModel {
  final String id;
  final String fullTitle;
  final String image;

  MovieModel({
    required this.id,
    required this.fullTitle,
    required this.image,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'],
      fullTitle: json['fullTitle'],
      image: json['image'],
    );
  }
}

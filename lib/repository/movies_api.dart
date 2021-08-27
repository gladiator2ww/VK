import 'dart:convert';

import 'package:flutter_application_2/models/movie_model.dart';
import 'package:http/http.dart' as http;

class MoviesProvider {
  Future<List<MovieModel>> fetchMovies() async {
    final data = await http
        .get(Uri.parse('https://imdb-api.com/en/API/Top250Movies/k_h9n2qmv0'));
    final items = MoviesItems.fromJson(jsonDecode(data.body)).items;
    return items;
  }
} // class for API

class MoviesItems {
  final List<MovieModel> items;

  MoviesItems({required this.items});

  factory MoviesItems.fromJson(Map<String, dynamic> json) {
    return MoviesItems(
        items: (json['items'] as List)
            .map((json) => MovieModel.fromJson(json))
            .toList());
  }
}

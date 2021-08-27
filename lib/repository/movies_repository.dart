import 'package:flutter_application_2/models/movie_model.dart';
import 'movies_api.dart';

class MoviesRepository {
  MoviesProvider _movieProvider = MoviesProvider();
  Future<List<MovieModel>> getAllMovies() => _movieProvider.fetchMovies();
}

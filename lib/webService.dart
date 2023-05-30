import 'dart:convert';

import 'package:task/Model/movie.dart';
import 'package:http/http.dart' as http;

class APIHelper {
  static const apiKey = "&api_key=9813ce01a72ca1bd2ae25f091898b1c7";
  static const url = "https://api.themoviedb.org/3";
  static const path = "/discover/movie?sort_by=popularity.desc";

  static List<Movie> movies = [];
  static List<Movie> moviesInApp = [];

  static Future<List<Movie>> getMovies() async {
    var apiUrl = url + path + apiKey;

    var response = await http.get(Uri.parse(apiUrl));
    List<Movie> movies = [];

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      //print(data.runtimeType);
      print(data['results']);
      for (var movie in data['results']) {
        movies.add(Movie.fromJson(movie));
      }
    }
    return movies;
  }
}

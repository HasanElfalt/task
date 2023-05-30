class Movie {
  int? id;
  String? title;
  String? originalTitle;
  String? overview;
  String? posterPath;
  String? backdropPath;
  double? popularity;
  String? releaseDate;
  bool? video;
  double? voteAverage;
  int? voteCount;

  Movie(
      {this.id,
      this.title,
      this.originalTitle,
      this.overview,
      this.posterPath,
      this.backdropPath,
      this.popularity,
      this.releaseDate,
      this.video,
      this.voteAverage,
      this.voteCount});

  Movie.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    posterPath = json['poster_path'];
    backdropPath = json['backdrop_path'];
    popularity = json['popularity'];
    releaseDate = json['release_date'];
    video = json['video'];
    //voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }
}

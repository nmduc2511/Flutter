

class PopularResult {
  int page;
  List<PopularDetail> populars;

  PopularResult({this.page, this.populars});

  factory PopularResult.fromJson(Map<String, dynamic> json) {
    var results = json['results'] as List;
    var list = results.map((tagJson) => PopularDetail.fromJson(tagJson)).toList();
    return PopularResult(
      page: json['page'],
      populars: list,
    );
  }
}

class PopularDetail {
  String title;
  String overview;
  String posterPath;
  String backdropPath;
  String releaseDate;
  dynamic voteAverage;

  PopularDetail({this.title, this.overview, this.posterPath, this.backdropPath, this.releaseDate, this.voteAverage});

  factory PopularDetail.fromJson(Map<String, dynamic> json) {
    return PopularDetail(
        title: json['title'],
        overview: json['overview'],
        posterPath: json['poster_path'],
        backdropPath: json['backdrop_path'],
        releaseDate: json['release_date'],
        voteAverage: json['vote_average']
    );
  }
}
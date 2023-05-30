import 'package:flutter/material.dart';
import 'package:task/Model/movie.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  var imgPath = "https://image.tmdb.org/t/p/w300/";

  @override
  void initState() {
    print("details init");
    super.initState();
  }

  @override
  void deactivate() {
    print("details deactivate");
    super.deactivate();
  }

  @override
  void dispose() {
    print("details dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var singleMovie = ModalRoute.of(context)?.settings.arguments as Movie;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Image.network(imgPath + singleMovie.backdropPath.toString()),
          Text(
            singleMovie.originalTitle.toString(),
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(singleMovie.overview.toString()),
          Text(singleMovie.releaseDate.toString()),
          Text("Popularity: ${singleMovie.popularity}"),
        ]),
      ),
    );
  }
}

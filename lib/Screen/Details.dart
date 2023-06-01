import 'package:flutter/material.dart';
import 'package:task/Model/movie.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  var imgPath = "https://image.tmdb.org/t/p/w500/";
/*
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
  }*/

  @override
  Widget build(BuildContext context) {
    var singleMovie = ModalRoute.of(context)?.settings.arguments as Movie;
    return Scaffold(
      backgroundColor: Colors.black,
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          height: 350,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image:
                    NetworkImage(imgPath + singleMovie.backdropPath.toString()),
                fit: BoxFit.fill),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 35,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey),
              child: const Center(
                child: Text(
                  "+18",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 35,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey),
              child: const Center(
                child: Text(
                  "Action",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 35,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      singleMovie.voteAverage.toString(),
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 35,
            ),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey),
              child: const Center(
                child: Icon(Icons.add),
              ),
            ),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey),
              child: const Center(
                child: Icon(Icons.share),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          alignment: Alignment.centerLeft,
          child: Text(
            singleMovie.originalTitle.toString(),
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Text(
            singleMovie.overview.toString(),
            style: const TextStyle(color: Colors.grey),
          ),
        ),
        Text(
          singleMovie.releaseDate.toString(),
          style: const TextStyle(color: Colors.white),
        ),
        Text(
          "Popularity: ${singleMovie.popularity}",
          style: const TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 45,
        )
      ]),
      //  ),
    );
  }
}

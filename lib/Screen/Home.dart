import 'package:flutter/material.dart';
import 'package:task/webService.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var imgPath = "https://image.tmdb.org/t/p/w300/";

  @override
  void deactivate() {
    print("home deactivate");
    super.deactivate();
  }

  @override
  void dispose() {
    print("home dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: APIHelper.moviesInApp.length,
        itemBuilder: (context, index) => Column(children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "details",
                  arguments: APIHelper.moviesInApp[index]);
            },
            child: Image.network(
                imgPath + APIHelper.moviesInApp[index].posterPath.toString(),
                height: 350),
          ),
          Text(
            APIHelper.moviesInApp[index].originalTitle.toString(),
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(0, 2, 0, 20),
              child: Text(
                APIHelper.moviesInApp[index].releaseDate.toString(),
              ))
        ]),
      ),
    );
  }
}

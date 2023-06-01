import 'package:flutter/material.dart';
import 'package:task/webService.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var imgPath = "https://image.tmdb.org/t/p/w300/";
/*
  @override
  void deactivate() {
    print("home deactivate");
    super.deactivate();
  }

  @override
  void dispose() {
    print("home dispose");
    super.dispose();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
        child: SizedBox(
          height: 750,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Coming Soon",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white)),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Image.network(
                    "https://people.com/thmb/WyIht3TarwbXSUpZVGmkcEmh2kk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(999x0:1001x2)/lion-king-11-2000-0f18b8c334de400c9520a09f94c4a335.jpg",
                    width: double.infinity),
              ),
              const Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                  child: Text("Trending Now",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white))),
              Expanded(
                child: ListView.builder(
                  itemCount: APIHelper.moviesInApp.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0, 15, 0),
                    child: Column(children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "details",
                              arguments: APIHelper.moviesInApp[index]);
                        },
                        child: Image.network(
                            imgPath +
                                APIHelper.moviesInApp[index].posterPath
                                    .toString(),
                            height: 350),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Text("Action",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white,
                                      backgroundColor: Colors.grey[700]
                                      // decoration:TextDecoration(TextDecoration: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))
                                      )),
                            ),
                            Container(
                              decoration:
                                  BoxDecoration(color: Colors.grey[700]),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                      APIHelper.moviesInApp[index].voteAverage
                                          .toString(),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.white,

                                        // decoration:TextDecoration(TextDecoration: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        APIHelper.moviesInApp[index].originalTitle.toString(),
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

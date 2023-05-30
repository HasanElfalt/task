import 'package:flutter/material.dart';
import 'package:task/Screen/Home.dart';
import 'package:task/Screen/details.dart';
import 'package:task/webService.dart';

void main() {
  runApp(MyHomePage(title: "MovieApp"));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    APIHelper.getMovies().then((value) => {
          setState(() {
            APIHelper.movies.addAll(value);
            APIHelper.moviesInApp = APIHelper.movies;
          })
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {'/': (context) => Home(), 'details': (context) => Details()});
  }
}

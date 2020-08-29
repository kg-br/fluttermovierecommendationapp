import 'package:flutter/material.dart';
import 'package:flutterproject/widgets/bestof.dart';
import 'package:flutterproject/widgets/homescree.dart';
import 'package:flutterproject/widgets/moviedetails.dart';
import 'package:flutterproject/widgets/toprated.dart';
import 'widgets/toprecomends.dart';
import 'modelofmovies/movies.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: homescreen(),
        routes: {
          moviedetails.routeName: (ctx) => moviedetails(),
        });
  }
}

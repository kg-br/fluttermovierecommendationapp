import 'package:flutter/material.dart';
import 'package:flutterproject/modelofmovies/movies.dart';
import 'package:flutterproject/widgets/moviedetails.dart';

class toprated extends StatelessWidget {
  final int index;
  toprated(this.index);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              moviedetails.routeName,
              arguments: {
                'id': topRatedMovieList[index].id,
                'title': topRatedMovieList[index].title,
                'imageUrl': topRatedMovieList[index].imageUrl,
                'description': topRatedMovieList[index].description,
                'rating': topRatedMovieList[index].rating,
                'year': topRatedMovieList[index].year,
                'duration': topRatedMovieList[index].duration,
              },
            );
          },
          child: Container(
            child: Column(
              children: [
                Hero(
                  tag: topRatedMovieList[index].id,
                  child: Container(
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        image: DecorationImage(
                            image:
                                NetworkImage(topRatedMovieList[index].imageUrl),
                            fit: BoxFit.cover)),
                  ),
                ),
                SizedBox(height: 3),
                Container(
                  decoration: BoxDecoration(),
                  child: Text(
                    topRatedMovieList[index].title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

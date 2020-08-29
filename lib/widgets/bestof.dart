import 'package:flutter/material.dart';
import 'package:flutterproject/modelofmovies/movies.dart';
import 'package:flutterproject/widgets/moviedetails.dart';

class bestof extends StatelessWidget {
  final int index;
  bestof(this.index);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              moviedetails.routeName,
              arguments: {
                'id': bestMovieList[index].id,
                'title': bestMovieList[index].title,
                'imageUrl': bestMovieList[index].imageUrl,
                'description': bestMovieList[index].description,
                'rating': bestMovieList[index].rating,
                'year': bestMovieList[index].year,
                'duration': bestMovieList[index].duration,
              },
            );
          },
          child: Container(
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      image: DecorationImage(
                          image: NetworkImage(bestMovieList[index].imageUrl))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 204,
                    child: Column(
                      children: [
                        Text(
                          bestMovieList[index].title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(bestMovieList[index].description),
                      ],
                    ),
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

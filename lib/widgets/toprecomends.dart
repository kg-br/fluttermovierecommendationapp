import 'package:flutter/material.dart';
import 'package:flutterproject/modelofmovies/movies.dart';
import 'package:flutterproject/widgets/moviedetails.dart';

class toprecomends extends StatelessWidget {
  final int index;
  toprecomends(this.index);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                moviedetails.routeName,
                arguments: {
                  'id': movieList[index].id,
                  'title': movieList[index].title,
                  'imageUrl': movieList[index].imageUrl,
                  'description': movieList[index].description,
                  'rating': movieList[index].rating,
                  'year': movieList[index].year,
                  'duration': movieList[index].duration,
                },
              );
            },
            child: Column(
              children: [
                Hero(
                  tag: movieList[index].id,
                  child: Container(
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        image: DecorationImage(
                            image: NetworkImage(movieList[index].imageUrl),
                            fit: BoxFit.cover)),
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  movieList[index].title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

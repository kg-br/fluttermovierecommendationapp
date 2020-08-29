import 'package:flutter/material.dart';
import 'package:flutterproject/widgets/bestof.dart';
import 'package:flutterproject/widgets/moviedetails.dart';
import 'package:flutterproject/widgets/toprated.dart';
import 'toprecomends.dart';
import 'package:flutterproject/modelofmovies/movies.dart';

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[100],
        title: Text(
          "Movie recommender by Karthik",
          style: TextStyle(fontSize: 17, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  " Top recommendations",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              height: 200,
              color: Colors.amber[50],
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movieList.length,
                itemBuilder: (ctx, i) => toprecomends(i),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  " Best of 2019",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              height: 530,
              color: Colors.amber[50],
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                // scrollDirection: Axis.horizontal,
                itemCount: bestMovieList.length,
                itemBuilder: (ctx, i) => bestof(i),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  " Top rated movies",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              height: 200,
              color: Colors.amber[50],
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movieList.length,
                itemBuilder: (ctx, i) => toprated(i),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

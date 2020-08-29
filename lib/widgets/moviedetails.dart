import 'package:flutter/material.dart';

class moviedetails extends StatelessWidget {
  static const routeName = '/movie-details';
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = routeArgs['id'];
    final rating = routeArgs['rating'];
    //final id = routeargs['id'];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0Xfff4f4f4),
          elevation: 0,
          iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Movie Details",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Center(
                child: Card(
                  elevation: 10,
                  child: Hero(
                    tag: id,
                    child: Container(
                      alignment: Alignment.center,
                      height: 400,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(routeArgs['imageUrl']))),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                child: Text(
                  routeArgs['title'],
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      child: Container(
                        width: 70,
                        height: 85,
                        //color: Colors.amberAccent[100],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.timer,
                                size: 45,
                                color: Colors.deepPurple,
                              ),
                              Text(routeArgs['duration'])
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      child: Container(
                        width: 70,
                        height: 85,
                        // color: Colors.amberAccent[100],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.calendar_today,
                                size: 45,
                                color: Colors.deepPurple,
                              ),
                              Text(routeArgs['year'])
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      child: Container(
                        width: 70,
                        height: 85,
                        //  color: Colors.amberAccent[100],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.star_border,
                                size: 45,
                                color: Colors.deepPurple,
                              ),
                              Text('$rating/10')
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  child: Text(
                    routeArgs['description'],
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: RaisedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.play_circle_outline,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Watch Trailer",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                color: Theme.of(context).primaryColor,
              ),
            ),
            Expanded(
              child: RaisedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.check_circle_outline),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Buy Now",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                color: Colors.yellow,
              ),
            )
          ],
        ));
  }
}

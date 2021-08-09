import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_usf/domain/movie.dart';

class DetailsPage extends StatelessWidget {
  final Movie movie;

  const DetailsPage({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Image.network(movie.image),
            ),
            Text(movie.title),
            Text(movie.year)
          ],
        ),
      ),
    );
  }
}

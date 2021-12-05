

import 'package:flutter/material.dart';
import 'package:mobile_movie_app/Models/populars_model.dart';

class MovieHorizontal extends StatelessWidget {
  const MovieHorizontal({Key? key, required this.populares}) : super(key: key);

  final List<Populars> populares;

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return SizedBox(
      height: _screenSize.height * 0.25,
      child: PageView(
        pageSnapping: false,
        controller: PageController(
          initialPage: 1, 
          viewportFraction: 0.3),
        children: _tarjetas(context),
      ),
    );
  }

  _tarjetas(BuildContext context) {
    return populares.map((pelicula) {
      return Container(
        margin: const EdgeInsets.only(right: 15),
        child: ListView(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: const AssetImage('assets/img/no-image.jpg'),
                image: NetworkImage(pelicula.getPosterImg()),
                fit: BoxFit.cover,
                height: 160,
              ),
            ),
            const SizedBox(height: 5,),
            Center(child: Text(pelicula.title, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.caption,))
          ],
        ),
      );
    }).toList();
  }
}

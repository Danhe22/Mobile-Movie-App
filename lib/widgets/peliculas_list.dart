import 'package:flutter/material.dart';
import 'package:mobile_movie_app/widgets/pelicula.dart';


class PeliculasList extends StatelessWidget {
  const PeliculasList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          child: ListView(
            children: [
              Pelicula(),
              Pelicula(),
              Pelicula(),
              Pelicula(),
              Pelicula(),
              Pelicula(),
              Pelicula(),
              Pelicula(),
              Pelicula(),
            ],
          ),
        ),
    );
      
    
  }
}
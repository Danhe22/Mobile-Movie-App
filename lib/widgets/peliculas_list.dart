import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_movie_app/Controller/movies_controller.dart';
import 'package:mobile_movie_app/Models/pelicula_model.dart';
import 'package:mobile_movie_app/providers/movies_provider.dart';
import 'package:mobile_movie_app/widgets/card_swiper.dart';
// import 'package:mobile_movie_app/widgets/pelicula.dart';



class PeliculasList extends StatelessWidget {
  PeliculasList({Key? key}) : super(key: key);

  final moviesProvider = MoviesProvider();

  @override
  Widget build(BuildContext context) {

    Get.put(MoviesController());

    return _swipperTarjetas();
    // 
    // Expanded(
    //   child: ListView(
    //     children: const [
    //       Pelicula(),
    //       Pelicula(),
    //       Pelicula(),
    //       Pelicula(),
    //       Pelicula(),
    //       Pelicula(),
    //       Pelicula(),
    //       Pelicula(),
    //       Pelicula(),
    //     ],
    //   ),
    // );
      
    
  }
  
  Widget _swipperTarjetas(){

    


    return FutureBuilder(
      future: moviesProvider.getMovies(),
      builder: (BuildContext context, AsyncSnapshot<List<Result>> snapshot) {
        
        if(snapshot.hasData){
        return CardSwiper( peliculas: snapshot.data! );
        }else{
          return const SizedBox(
            height: 400,
            child: Center(
              child:  CircularProgressIndicator()
            )
          );
        }
        
      },
    );


  }
}
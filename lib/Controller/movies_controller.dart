import 'package:get/get.dart';
import 'package:mobile_movie_app/Models/pelicula_model.dart';
import 'package:mobile_movie_app/providers/movies_provider.dart';

class MoviesController extends GetxController{

 final moviesList = <Result>[]; 
 final moviesProvider = Get.find<MoviesProvider>();

 MoviesController(){

   getMovies();
   
 }

 Future getMovies() async{

   final movies = await moviesProvider.getMovies();
   moviesList.addAll(movies);
   update();

 }

}
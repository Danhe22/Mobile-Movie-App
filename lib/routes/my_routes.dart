import 'package:get/get.dart';
import 'package:mobile_movie_app/screens/home_screen.dart';
import 'package:mobile_movie_app/screens/login_screen.dart';
import 'package:mobile_movie_app/screens/signup_screen.dart';

routes() =>[
  GetPage<LoginScreen>(name: '/', page: ()=> LoginScreen() ),
  GetPage<SignupScreen>(name: '/signup', page: ()=> SignupScreen() ),
  GetPage<HomeScreen>(name: '/home', page: ()=> HomeScreen() ),
];
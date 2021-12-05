import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mobile_movie_app/Theme/theme.dart';
import 'package:mobile_movie_app/providers/movies_provider.dart';
import 'package:mobile_movie_app/routes/my_routes.dart';


void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();

Get.lazyPut(()=> MoviesProvider());

runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mobile Movie',
        theme: miTema,
        initialRoute: '/home',
        navigatorKey: Get.key,
        getPages: routes(),
        // routes: {
        //   'login'    : ( BuildContext context ) => LoginScreen(),
        //   'signup'   : ( BuildContext context ) => SignupScreen(),
        //   'home'     : ( BuildContext context ) => HomeScreen()
        // },
        
      );
    
  }
}
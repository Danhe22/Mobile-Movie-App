import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mobile_movie_app/providers/movies_provider.dart';
import 'package:mobile_movie_app/routes/my_routes.dart';
import 'package:mobile_movie_app/theme/theme.dart';
import 'package:provider/provider.dart';


void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();

Get.lazyPut(()=> MoviesProvider());


runApp( 
 ChangeNotifierProvider(
   create: (_) => ThemeChanger(),
   child: const MyApp()
 )
  
);
} 

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {

    final currentTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mobile Movie',
        initialRoute: '/home',
        navigatorKey: Get.key,
        getPages: routes(),
        theme:currentTheme,
        
        
        
      );
    
  }

  
}

class Themes { 
  static final light = ThemeData.light (). copyWith ( 
    backgroundColor: Colors.white, 
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white
    ),
    iconTheme: const IconThemeData(color: Colors.black54),
    
     
  ); 
  static final dark = ThemeData.dark (). copyWith ( 
    backgroundColor: Colors.black54, 
    
  ); 
}






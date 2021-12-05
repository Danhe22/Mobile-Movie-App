import 'package:flutter/material.dart';
import 'package:mobile_movie_app/widgets/estados_list.dart';
import 'package:mobile_movie_app/widgets/peliculas_list.dart';
import 'package:mobile_movie_app/widgets/post_list.dart';
import 'package:mobile_movie_app/widgets/profile.dart';
import 'package:mobile_movie_app/widgets/ubicacion_list.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  
  
  HomeScreen({Key? key}) : super(key: key);

  var textStyle = const TextStyle(
      color: Colors.red,
      fontSize: 24,
      fontWeight: FontWeight.w900,
      fontFamily: 'Times New Roman');


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _NavegationModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Mobile Movie",
            style: textStyle,
          ),
          centerTitle: false,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.add_box_outlined,
                color: Colors.black,
                size: 27,
              ),
              onPressed: () {},
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.messenger_outline_outlined,
                  color: Colors.black,
                  size: 27,
                ))
          ],
          backgroundColor: Colors.white,
        ),
        body: const _Pages(),
        bottomNavigationBar: const _Navigation(),
      ),
    );
  }
}

class _Navigation extends StatelessWidget {
  const _Navigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navegacionModel = Provider.of<_NavegationModel>(context);

    return BottomNavigationBar(
      selectedItemColor: Colors.red,
      type: BottomNavigationBarType.fixed,
      currentIndex: navegacionModel.paginaActual,
      onTap: (i) => navegacionModel.paginaActual = i,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.post_add), label: 'Estados'),
        BottomNavigationBarItem(icon: Icon(Icons.movie_filter_outlined), label: 'Peliculas'),
        BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined), label: 'Ubicacion'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: 'Perfil'),
      ],
    );
  }
}

class _Pages extends StatelessWidget {
  const _Pages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navegacionModel = Provider.of<_NavegationModel>(context);

    return PageView(
      controller: navegacionModel.pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        //Seccion de posts
        Column(
          children: [SafeArea(child: Container()), const PostList()],
        ),
        //Seccion de estados
        Column(
          children: [SafeArea(child: Container()), const EstadosList()],
        ),
        //Seccion de peliculas
        Column(
          children: [SafeArea(child: Container()), PeliculasList()],
        ),
        //Seccion de ubicaciones
        Column(
          children: [SafeArea(child: Container()), const UbicationList()],
        ),
        //Seccion de perfil
        Column(
          children: [
            Expanded(
                child: Column(
              children: [SafeArea(child: Container()), const Profile()],
            )),
          ],
        ),
      ],
    );
  }
}

class _NavegationModel with ChangeNotifier {
  int _paginaActual = 0;
  final PageController _pageController = PageController(initialPage: 0);
  int get paginaActual => _paginaActual;

  set paginaActual(int valor) {
    _paginaActual = valor;
    _pageController.animateToPage(valor,
        duration: const Duration(milliseconds: 50), curve: Curves.easeOut);
    notifyListeners();
  }

  PageController get pageController => _pageController;
}

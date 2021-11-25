import 'package:flutter/material.dart';
import 'package:mobile_movie_app/widgets/TopBar.dart';
import 'package:mobile_movie_app/widgets/estados_list.dart';
import 'package:mobile_movie_app/widgets/peliculas_list.dart';
import 'package:mobile_movie_app/widgets/post_list.dart';
import 'package:mobile_movie_app/widgets/profile.dart';
import 'package:mobile_movie_app/widgets/ubicacion_list.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new _NavegationModel(),
      child: Scaffold(
        body: _Pages(),
        bottomNavigationBar: _Navigation(),
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
      type: BottomNavigationBarType.fixed,
      currentIndex: navegacionModel.paginaActual,
      onTap: (i) => navegacionModel.paginaActual = i,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined), title: Text('Home')),
        BottomNavigationBarItem(
            icon: Icon(Icons.post_add), title: Text('Estados')),
        BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter_outlined), title: Text('Peliculas')),
        BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined), title: Text('Ubicacion')),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined), title: Text('Perfil')),
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
      physics: NeverScrollableScrollPhysics(),
      children: [
        //Seccion de posts
        Column(
          children: [
            SafeArea(
                child: Container(
              height: 5,
            )),
            TopBar(),
            PostList()
          ],
        ),
        //Seccion de estados
        Container(
          child: Column(
            children: [
              SafeArea(
                  child: Container(
                height: 5,
              )),
              TopBar(),
              EstadosList()
            ],
          ),
        ),
        //Seccion de peliculas
        Container(
          child: Column(
            children: [
              SafeArea(
                  child: Container(
                height: 5,
              )),
              TopBar(),
              PeliculasList()
            ],
          ),
        ),
        //Seccion de ubicaciones
        Container(
          child: Column(
            children: [
              SafeArea(
                  child: Container(
                height: 5,
              )),
              TopBar(),
              UbicationList()
            ],
          ),
        ),
        //Seccion de perfil
        Container(
          child: Column(
            children: [
              SafeArea(
                  child: Container(
                height: 5,
              )),
              TopBar(),
              Profile()
            ],
          ),
        ),
      ],
    );
  }
}

class _NavegationModel with ChangeNotifier {
  int _paginaActual = 0;
  PageController _pageController = new PageController(initialPage: 0);
  int get paginaActual => this._paginaActual;

  set paginaActual(int valor) {
    this._paginaActual = valor;
    _pageController.animateToPage(valor,
        duration: Duration(milliseconds: 50), curve: Curves.easeOut);
    notifyListeners();
  }

  PageController get pageController => this._pageController;
}

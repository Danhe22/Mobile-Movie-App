import 'package:flutter/material.dart';
import 'package:mobile_movie_app/widgets/estados.dart';


class EstadosList extends StatelessWidget {
  const EstadosList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Estados(),
        Estados(),
        Estados(),
        Estados(),
        Estados(),
        Estados(),
        Estados(),
      ],
    );
      
    
  }
}
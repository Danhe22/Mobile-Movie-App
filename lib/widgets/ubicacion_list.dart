import 'package:flutter/material.dart';
import 'package:mobile_movie_app/widgets/ubicacion.dart';


class UbicationList extends StatelessWidget {
  const UbicationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          child: ListView(
            children: [
              Ubication(),
              Ubication(),
              Ubication(),
              Ubication(),
              Ubication(),
              Ubication(),
              Ubication(),
              Ubication(),
              Ubication(),
              Ubication(),
            ],
          ),
        ),
    );
      
    
  }
}
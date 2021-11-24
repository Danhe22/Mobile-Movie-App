import 'package:flutter/material.dart';

class Pelicula extends StatelessWidget {
  const Pelicula({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var boxDecoration = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 3,
          blurRadius: 3,
          offset: Offset(0, 2), // changes position of shadow
        ),
      ],
    );
    return Container(
      margin: EdgeInsets.only(top: 15) ,
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: size.width * 0.2,
            child: Text('Imagen de la pelicula'),
            decoration: boxDecoration,
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: size.width * 0.6,
            child: Text(
                'Lorem ipsum dolor sit amet consectetur adipiscing elit purus, maecenas class augue convallis molestie etiam est mollis commodo, lacinia volutpat interdum.'),
            decoration: boxDecoration,
          ),
        ],
      ),
    );

    SizedBox(
      height: 10,
    );
  }
}

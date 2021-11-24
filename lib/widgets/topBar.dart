import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(color: Colors.red, fontSize: 24, fontWeight: FontWeight.w900, fontFamily: 'Times New Roman' );
    return Container(
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(width: 7,),
          Text('Mobile Movie', style: textStyle,),
          Expanded(child: Container()),
          Icon(Icons.add_box_outlined, size:30),
          SizedBox(width: 10,),
          Icon(Icons.search_outlined, size: 30,),
          SizedBox(width: 4,),
        ],
      ),
    );
  }
}
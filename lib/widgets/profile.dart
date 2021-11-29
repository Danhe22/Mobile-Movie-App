import 'package:flutter/material.dart';
import 'package:mobile_movie_app/widgets/post.dart';
import 'package:mobile_movie_app/widgets/post_list.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.account_circle_rounded, size: 90,),
              Text('Nombre de usuario', style: TextStyle(fontWeight: FontWeight.w600),)
            ],
          ),
          SizedBox(height: 20,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.post_add_outlined, size: 35,),
                Icon(Icons.list_alt_outlined, size: 32,),
                Icon(Icons.message_outlined, size: 31,)
              ],
            ),
          ),
          
          
              PostList()
            
          
           
        ],
      ),
    );
  }
}
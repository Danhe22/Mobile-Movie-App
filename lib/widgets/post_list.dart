import 'package:flutter/material.dart';
import 'package:mobile_movie_app/widgets/post.dart';

class PostList extends StatelessWidget {
  const PostList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
          children: const [
            Post(),
            Post(),
            Post(),
            Post()
          ],
        
      ),
    );
      
    
  }
}

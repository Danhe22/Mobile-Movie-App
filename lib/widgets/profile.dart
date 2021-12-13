import 'package:flutter/material.dart';
import 'package:mobile_movie_app/widgets/estados_list.dart';
import 'package:mobile_movie_app/widgets/post_list.dart';
import 'package:mobile_movie_app/widgets/settings.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const SizedBox(height: 5,),
          Row(
            children: const [
              Icon(Icons.account_circle_rounded, size: 90,),
              Text('Nombre de usuario', style: TextStyle(fontWeight: FontWeight.w600),)
            ],
          ),
          const SizedBox(height: 5,),
          
          
          //     const PostList()
          Expanded(
            child: DefaultTabController(
              length: 3, 
              child: Column(children:   const [
                TabBar(
                  indicatorColor: Colors.black54 ,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                  Tab(icon: Icon(Icons.post_add_outlined, size: 28, ),),
                  Tab(icon: Icon(Icons.list_alt_outlined, size: 28,),),
                  Tab(icon: Icon(Icons.settings, size: 28,),),
                  
                ]),
          
                Expanded(
                  child: TabBarView(
                      children: [
                        PostList(),
                        EstadosList(), 
                        Settings()                   
                      ] ),
                ) 
                
              ],)
              ),
          )
            
          
           
        ],
      ),
    );
  }
}
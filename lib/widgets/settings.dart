import 'package:flutter/material.dart';
import 'package:mobile_movie_app/theme/theme.dart';
import 'package:provider/provider.dart';


class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final appTheme = Provider.of<ThemeChanger>(context);

    return ListTile(
      title: const Text('Modo oscuro'),
      trailing: Switch.adaptive(
        value: appTheme.darkTheme, 
        activeColor: Colors.red,
        onChanged: (value){
          appTheme.darkTheme = value;
        }),
    );
    
  }
}

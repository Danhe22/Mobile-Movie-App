import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: /*Container(
        width: size.width * 0.85,
        padding: EdgeInsets.symmetric(vertical: 150.0),
        child: */Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text('Iniciar Sesión', style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold), )),
              SizedBox(height: 40,),
              _loginForm(context),
              SizedBox(height: 30,),
              Text('Registrarse', style: TextStyle(color: Colors.red, fontSize: 14)),
              
            ],
             
        ),
      );
  //  );
  }

  Widget _loginForm(BuildContext context){

    
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: size.width * 0.8,
        
        child: Column(
          
          children: [
            _crearEmail(),
            SizedBox(height: 30,),
            _crearPassword(),
            SizedBox(height: 40,),
            _crearBoton()
          ],
        ),
      ),
    );

  }

  Widget _crearEmail() {
    
    return Container(
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.email_outlined, color: Colors.red,),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black54)
          ),
          // hintText: 'ejemplo@correo.com',
          labelText: 'Correo electronico', 
          labelStyle: TextStyle(color: Colors.black54) 
        ),
      ),

    );

  }

  Widget _crearPassword() {
    
    return Container(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(Icons.lock_outline, color: Colors.red,),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black54)
          ),
          // hintText: 'ejemplo@correo.com',
          labelText: 'Contraseña', 
          labelStyle: TextStyle(color: Colors.black54) 
        ),
      ),

    );

  }


  Widget _crearBoton(){
    return RaisedButton(
      child: Container(
      padding: EdgeInsets.symmetric(horizontal: 90.0, vertical:12.0 ),
      child: Text('Ingresar')),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      color: Colors.red,
      textColor: Colors.white,
      onPressed: (){},
    );
  }

}
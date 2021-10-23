/* CHECAR */
//Revisar que funcione con una base de datos, si se puede

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/Logo.png'), height: 250),
            SizedBox(height: 10.0),
            Text('Inicia Sesión', style: TextStyle(color: Colors.red[300], fontSize: 25)),
            SizedBox(height: 10.0),
            _usuario(),
            SizedBox(height: 15.0),
            _contrasena(),
            SizedBox(height: 20.0),
            _iniciarSesion(context),
            SizedBox(height: 15.0),
            GestureDetector(
              child: Text('¡No tienes cuenta, crea una!', style: TextStyle(decoration: TextDecoration.underline, color: Colors.orange[700], fontSize: 15)),
              onTap: () {
                Navigator.of(context).pushNamed('registro');
              },
            ),
            SizedBox(height: 15.0),
          ],
        ),
      ),
    );
  }

  Widget _usuario() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          icon: Icon(Icons.person),
          hintText: 'Usuario',
          labelText: 'Usuario:',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        onChanged: (value) {},
        autofocus: true,
      ),
    );
  }

  Widget _contrasena() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0),
      child: TextField(
        obscureText: true,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          icon: Icon(Icons.password),
          hintText: 'Contraseña',
          labelText: 'Contraseña:',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        onChanged: (value) {},
      ),
    );
  }

  Widget _iniciarSesion(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        //aqui realizar la comprobacion con la base de datos
        Navigator.of(context).pushNamed('registro');
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
        child: Text('Iniciar Sesión', style: TextStyle(fontSize: 17.0)),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
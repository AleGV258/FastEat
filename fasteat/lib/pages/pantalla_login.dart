/* CHECAR */
//Revisar que funcione con una base de datos, si se puede

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String usuarioIngreso = '';
  String contrasenaIngreso = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInImage(placeholder: AssetImage('assets/loading.gif'), image: AssetImage('assets/Logo.png'), height: 250),
            SizedBox(height: 10.0),
            Text('Inicia Sesión',
                style: TextStyle(color: Colors.red[300], fontSize: 25)),
            SizedBox(height: 10.0),
            _usuario(),
            SizedBox(height: 15.0),
            _contrasena(),
            SizedBox(height: 20.0),
            _iniciarSesion(context),
            SizedBox(height: 15.0),
            GestureDetector(
              child: Text('¡No tienes cuenta, crea una!',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.orange[700],
                      fontSize: 15)),
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
        onChanged: (value) {
          setState(() {
            usuarioIngreso = value;
          });
        },
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
        onChanged: (value) {
          setState(() {
            contrasenaIngreso = value;
          });
        },
      ),
    );
  }

  Widget _iniciarSesion(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (usuarioIngreso != '' && contrasenaIngreso != '') {
          //Usuario(usuario: usuarioNew, correo: correoNew, contrasena: contrasenaNew, numeroTel: telefonoNew, id: null);
          Navigator.of(context).pushNamed('home');
        } else {
          _mostrarAlerta(context);
        }
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

  void _mostrarAlerta(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Error de Ingreso'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('No se ha podido ingresar correctamente, rellene todos los campos del login e intentelo nuevamente.')
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('   Cancelar   '),
            ),
          ],
        );
      },
      barrierDismissible: false,
    );
  }
}

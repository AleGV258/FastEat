/* CHECAR */

import 'package:fasteat/pages/pantalla_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

class PantallaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [Colors.red, Colors.orange],
          ),
        ),
        child: PageView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          //widget que lo que tiene adentro es como un scroll Pageview
          children: [
            PaginaInicial(),
            Login(),
          ],
        ),
      ),
    );
  }
}

class PaginaInicial extends StatelessWidget {
  const PaginaInicial ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Fondo(),
        Contenido(),
      ],
    );
  }
}

class Fondo extends StatelessWidget {
  const Fondo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: double.infinity,
      width: double.infinity,
      child: Opacity(
        opacity: 0.3,
        child: _generarFondo(),
      ),
    );
  }

  //Función para generar uno de los posibles backgrounds para la pantalla de bienvenida
  Widget? _generarFondo() {
    int min = 0;
    int max = 7;
    final random = new Random();
    final rnd = min + random.nextInt(max - min);
    switch (rnd) {
      case 0:
        return Image(
            image: AssetImage('assets/pantallaInicio0.png'), fit: BoxFit.cover);
      case 1:
        return Image(
            image: AssetImage('assets/pantallaInicio1.png'), fit: BoxFit.cover);
      case 2:
        return Image(
            image: AssetImage('assets/pantallaInicio2.png'), fit: BoxFit.cover);
      case 3:
        return Image(
            image: AssetImage('assets/pantallaInicio3.png'), fit: BoxFit.cover);
      case 4:
        return Image(
            image: AssetImage('assets/pantallaInicio4.png'), fit: BoxFit.cover);
      case 5:
        return Image(
            image: AssetImage('assets/pantallaInicio5.png'), fit: BoxFit.cover);
      case 6:
        return Image(
            image: AssetImage('assets/pantallaInicio6.png'), fit: BoxFit.cover);
      case 7:
        return Image(
            image: AssetImage('assets/pantallaInicio7.png'), fit: BoxFit.cover);
    }
  }
}

class Contenido extends StatelessWidget {
  const Contenido({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //var textStyle = TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      //bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Expanded(child: Container()), //Separar
          //Text('FastEat', style: TextStyle(color: Colors.red, fontSize: 70)),
          Image(image: AssetImage('assets/Logo.png'), height: 300),
          Expanded(child: Container()), //Separar
          Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

class PantallaInicial extends StatelessWidget {
  //const PantallaInicial({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            //stops: [0.5, 0.5],
            colors: [
              Color(0xff5EE8C5),
              Color(0xff30BAD6),
            ],
          ),
        ),
        child: PageView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          //widget que lo que tiene adentro es como un scroll Pageview
          children: [
            Pagina1(),
            Pagina2(),
          ],
        ),
      ),
    );
  }
}

class Pagina2 extends StatelessWidget {
  const Pagina2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Text('Bienvenido',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                )),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff0092FA2),
            shape: StadiumBorder(),
          ),
        ),
      ),
    );
  }
}

class Pagina1 extends StatelessWidget {
  const Pagina1({Key? key}) : super(key: key);
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
        opacity: 0.5,
        child: _generarFondo(),
      ),
    );
      // child: Opacity(
      //   
      //   child: FittedBox(
      //     fit: BoxFit.fill,
      //   )
      // ),
  }
  
  //Función para generar uno de los posibles backgrounds para la pantalla de bienvenida
  Widget? _generarFondo() {
    int min = 0;
    int max = 7;
    final random = new Random();
    final rnd = min + random.nextInt(max - min);
    switch (rnd){
      case 0:
        return Image(image: AssetImage('assets/pantallaInicio0.png'), fit: BoxFit.cover);
      case 1:
        return Image(image: AssetImage('assets/pantallaInicio1.png'), fit: BoxFit.cover);
      case 2:
        return Image(image: AssetImage('assets/pantallaInicio2.png'), fit: BoxFit.cover);
      case 3:
        return Image(image: AssetImage('assets/pantallaInicio3.png'), fit: BoxFit.cover);
      case 4:
        return Image(image: AssetImage('assets/pantallaInicio4.png'), fit: BoxFit.cover);
      case 5:
        return Image(image: AssetImage('assets/pantallaInicio5.png'), fit: BoxFit.cover);
      case 6:
        return Image(image: AssetImage('assets/pantallaInicio6.png'), fit: BoxFit.cover);
      case 7:
        return Image(image: AssetImage('assets/pantallaInicio7.png'), fit: BoxFit.cover);
    }
  }
}

class Contenido extends StatelessWidget {
  const Contenido({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
        fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      //bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Text('FastEat', style: TextStyle(color: Colors.red, fontSize: 70)),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white),
        ],
      ),
    );
  }
}


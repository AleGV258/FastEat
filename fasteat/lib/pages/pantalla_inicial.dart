import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
          //widget que lo que tinene adentro es como un scroll Pageview
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
      child: Opacity(
          opacity: 0.3,
          child: FittedBox(
            child: Image(image: AssetImage('assets/fondoInicio.jpg')),
            fit: BoxFit.fill,
          ) //Image(image: AssetImage('assets/5.jpg')),
          ),
      //Image(image: AssetImage('assets/2.jpg')),opacity:,
    );
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

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
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            //stops: [0.5, 0.5],
            colors: [Colors.red, Colors.orange],
          ),
        ),
        child: PageView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          //widget que lo que tiene adentro es como un scroll Pageview
          children: [
            Pagina1(),
            Login(),
          ],
        ),
      ),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/Logo.png'), height: 250),
          SizedBox(height: 15.0),
          _correo(),
          SizedBox(height: 15.0),
          _contrasena(),
          SizedBox(height: 15.0),
          _iniciarSesion(),
          //SizedBox(height: 15.0),
        ],
      ),
    );
  }

  Widget _correo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.email),
          hintText: 'ejemplo@correo.com',
          labelText: 'Correo Electrónico:',
        ),
        onChanged: (value) {},
      ),
    );
  }

  Widget _contrasena() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          icon: Icon(Icons.password),
          hintText: 'Contraseña',
          labelText: 'Contraseña:',
        ),
        onChanged: (value) {},
      ),
    );
  }

  Widget _iniciarSesion() {
    return ElevatedButton(
      onPressed: () {}, //aqui realizar la comprobacion
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
        opacity: 0.4,
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
    var textStyle = TextStyle(
        fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);
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

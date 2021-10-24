import 'package:fasteat/widgets/comentarios.dart';
import 'package:flutter/material.dart';

class Platillo extends StatelessWidget {
  const Platillo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image(
            image: AssetImage('assets/pantallaInicio0.png'),
          ),
          titulo(),
          seccionBotones(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Descripción',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
              'Aliquip officia velit reprehenderit enim incididunt eiusmod culpa dolor ipsum nulla nulla enim dolor. Ullamco cillum officia amet officia ullamco nostrud non pariatur aliquip ut cupidatat duis voluptate voluptate. Ipsum duis culpa pariatur elit esse anim. Esse sint commodo Lorem occaecat amet consectetur dolor labore sit exercitation. Sint Lorem mollit magna occaecat ea.',
              textAlign: TextAlign.center,
            ),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(10),
            //   border: Border.all(color: Colors.grey),
            // ),
          ),
          comentarios(),
          Comentarios(),
        ],
      ),
    );
  }
}

class seccionBotones extends StatelessWidget {
  const seccionBotones({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //BotonPersonalizado(icon: Icons.call, texto: 'Call'),
          BotonPersonalizado(icon: Icons.star, texto: 'Calificar'),
          //Expanded(child: Container()),
          BotonPersonalizado(icon: Icons.favorite, texto: 'Agregar a favorito'),
        ],
      ),
    );
  }
}

class BotonPersonalizado extends StatelessWidget {
  final IconData icon;
  final String texto;
  const BotonPersonalizado({Key? key, required this.icon, required this.texto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color: Colors.red),
        //puede ir sin el this tambien
        Text(this.texto, style: TextStyle(color: Colors.red)),
      ],
    );
  }
}

class titulo extends StatelessWidget {
  const titulo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nombre del platillo',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              //Text('Precio', style: TextStyle(fontSize: 25)),
            ],
          ),
          Expanded(child: Container(height: 10)),
          Text('\$ 234.432', style: TextStyle(color: Colors.red, fontSize: 25)),
        ],
      ),
    );
  }
}

class comentarios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Comentarios',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //Aqui van los comentarios
        ],
      ),
    );
  }
}

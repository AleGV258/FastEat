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
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
                'Aliquip officia velit reprehenderit enim incididunt eiusmod culpa dolor ipsum nulla nulla enim dolor. Ullamco cillum officia amet officia ullamco nostrud non pariatur aliquip ut cupidatat duis voluptate voluptate. Ipsum duis culpa pariatur elit esse anim. Esse sint commodo Lorem occaecat amet consectetur dolor labore sit exercitation. Sint Lorem mollit magna occaecat ea.'),
          ),
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
          BotonPersonalizado(icon: Icons.call, texto: 'Call'),
          BotonPersonalizado(icon: Icons.map_sharp, texto: 'Route'),
          BotonPersonalizado(icon: Icons.share, texto: 'Share'),
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
        Icon(this.icon, color: Colors.tealAccent),
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
              Text('Hola mundo 1',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Hola mundo 2', style: TextStyle(color: Colors.black38)),
            ],
          ),
          Expanded(child: Container(height: 10)),
          Icon(Icons.star, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}

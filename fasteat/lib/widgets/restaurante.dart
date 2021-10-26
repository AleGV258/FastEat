import 'dart:typed_data';

import 'package:fasteat/widgets/comentarios.dart';
import 'package:flutter/material.dart';

class Restaurante extends StatelessWidget {
  const Restaurante({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage(
                'https://resizer.otstatic.com/v2/photos/wide-huge/1/31667145.jpg'),
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
              'La Guaquería es un restaurante inspirado en la mezcla y toques de sabores, texturas y colores ubicados en el hall de entrada al Hotel y Centro de Eventos Malibu en la ciudad de Sincelejo. Animado con una brisa fresca en el centro de una arquitectura moderna, con una gran guaca de sabores. Nuestro menú es una experiencia ecléctica de la mejor cocina internacional con un toque de estilo mediterráneo.',
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}

class seccionBotones extends StatelessWidget {
  const seccionBotones({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Tel: 44216843218'),
              Text('Correo: sazon@gmail.com'),
            ],
          ),
        ),
      ],
    );
  }
}

class titulo extends StatelessWidget {
  const titulo({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Restaurante Guaquería',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

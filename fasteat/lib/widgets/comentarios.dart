import 'package:fasteat/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class Comentarios extends StatelessWidget {
  const Comentarios({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      child: SingleChildScrollView(
        child: Table(
          children: [
            TableRow(
              children: [
                _Comentario(
                  nombre: 'Erika Ramirez',
                  texto: 'Muy bueno, lo recomiendo, vayan al lugar.',
                ),
              ],
            ),
            TableRow(
              children: [
                _Comentario(
                  nombre: 'Luis Ibarra',
                  texto: 'Deliciosa Hamburguesa.',
                ),
              ],
            ),
            TableRow(
              children: [
                _Comentario(
                  nombre: 'Israel Flores',
                  texto: 'Muy bueno, lo recomiendo, vayan al lugar.',
                ),
              ],
            ),
            TableRow(
              children: [
                _Comentario(
                  nombre: 'Israel Flores',
                  texto: 'Muy bueno, lo recomiendo, vayan al lugar.',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Comentario extends StatelessWidget {
  final String nombre;
  final String texto;
  const _Comentario({Key? key, required this.nombre, required this.texto})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 130,
      //margin: EdgeInsets.all(15),
      //height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        //smainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            this.nombre + ': ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
            ),
            textAlign: TextAlign.right,
          ),
          Text(this.texto, style: TextStyle(color: Colors.black, fontSize: 15)),
        ],
      ),
    );
  }
}

class _Usuario extends StatelessWidget {
  final String imagen;
  const _Usuario({Key? key, required this.imagen}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: CircleAvatar(
        backgroundImage: NetworkImage(imagen),
        //child: imagen,
        //radius: 30,
      ),
    );
  }
}

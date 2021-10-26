import 'package:flutter/material.dart';

class PlatilloPedido extends StatelessWidget {
  final String imagen;
  final double precio;
  final String texto;
  const PlatilloPedido(
      {Key? key,
      required this.imagen,
      required this.precio,
      required this.texto})
      : super(key: key);
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Table(
        children: [
          TableRow(
            children: [
              _Platillo(
                imagen: this.imagen,
                color: Colors.red,
                precio: this.precio,
                texto: this.texto,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Platillo extends StatelessWidget {
  final String imagen;
  final Color color;
  final double precio;
  final String texto;
  const _Platillo(
      {Key? key,
      required this.imagen,
      required this.color,
      required this.precio,
      required this.texto})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10),
        Container(
          width: 90,
          margin: EdgeInsets.all(15),
          height: 90,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: NetworkImage(this.imagen),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(width: 15),
        Container(
          width: 150,
          child: Text(
            this.texto,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(width: 15),
        Text(
          '\$ ' '$precio',
          style: TextStyle(
              color: this.color, fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.right,
        ),
      ],
    );
  }
}

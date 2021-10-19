import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _Tarjeta(
              imagen: Image(image: AssetImage('assets/Logo3.png'), height: 300),
              icon: Icons.border_all,
              color: Colors.white,
              texto: 'Hola mundo',
            ),
            _Tarjeta(
              imagen: Image(image: AssetImage('assets/Logo3.png'), height: 300),
              icon: Icons.keyboard_alt_sharp,
              color: Colors.white,
              texto: 'Hola mundo 2',
            ),
          ],
        ),
      ],
    );
  }
}

class _Tarjeta extends StatelessWidget {
  final Image imagen;
  final IconData icon;
  final Color color;
  final String texto;
  const _Tarjeta(
      {Key? key,
      required this.imagen,
      required this.icon,
      required this.color,
      required this.texto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      margin: EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 60,
            // child: Image(
            //   image: AssetImage('assets/pantallaInicio4.png'),
            // ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/pantallaInicio4.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: this.color,
            child: Icon(this.icon, size: 35),
            radius: 30,
          ),
          Text(this.texto, style: TextStyle(color: this.color, fontSize: 18)),
        ],
      ),
    );
  }
}

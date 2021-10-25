import 'package:fasteat/pages/pagina_platillo.dart';
import 'package:flutter/material.dart';

class PlatillosXCategoria extends StatelessWidget {
  const PlatillosXCategoria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Table(
        children: [
          TableRow(
            children: [
              _Platillo(
                imagen: Image(image: AssetImage('assets/Logo3.png')),
                color: Colors.red,
                precio: 250.00,
                texto: 'Comida Rápida',
              ),
              _Platillo(
                imagen: Image(image: AssetImage('assets/Logo3.png')),
                color: Colors.red,
                precio: 1820.00,
                texto: 'Comida Rápida',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Platillo extends StatelessWidget {
  final Image imagen;
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
    return Container(
      margin: EdgeInsets.all(15),
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      child: InkWell(
        onTap: () {
          print("Container clicked");
          Navigator.of(context).pushNamed(
            'platillo',
            arguments: {'nombrePlatillo': 'XD'},
          );
          //Navigator.push(context, PaginaPlatillo(nombrePlatillo: "nombrePlatillo")),
        },
        child: Column(
          children: [
            Container(
              child: Image(
                image: AssetImage('assets/pantallaInicio4.png'),
                fit: BoxFit.cover,
              ),
              height: 150,
              width: 220,
            ),
            Text('\$ ' '$precio',
                style: TextStyle(color: this.color, fontSize: 22)),
            Text(this.texto,
                style: TextStyle(color: Colors.black, fontSize: 22)),
          ],
        ),
      ),
    );
  }
}

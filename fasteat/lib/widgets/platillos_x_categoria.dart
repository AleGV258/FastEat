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
                imagen:
                    'https://media.gq.com.mx/photos/5ced746cd09b9ae227169147/16:9/w_2560%2Cc_limit/GettyImages-688974829.jpg',
                color: Colors.red,
                precio: 105.00,
                texto: 'Hamburguesa',
              ),
              _Platillo(
                imagen:
                    'https://www.lavanguardia.com/files/og_thumbnail/files/fp/uploads/2021/03/30/6063031b90a87.r_d.1083-871-0.jpeg',
                color: Colors.red,
                precio: 25.00,
                texto: 'Pizza',
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
            arguments: {'nombrePlatillo': this.texto},
          );
          //Navigator.push(context, PaginaPlatillo(nombrePlatillo: "nombrePlatillo")),
        },
        child: Column(
          children: [
            Container(
              child: Image(
                image: NetworkImage(this.imagen),
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

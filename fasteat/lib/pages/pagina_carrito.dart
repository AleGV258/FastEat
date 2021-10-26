import 'package:fasteat/widgets/PlatilloPedido.dart';
import 'package:fasteat/widgets/menu_abajo.dart';
import 'package:flutter/material.dart';

class PaginaCarrito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito de Compras'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Container(
            height: 600,
            alignment: Alignment.topCenter,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PlatilloPedido(
                    imagen:
                        'https://media.gq.com.mx/photos/5ced746cd09b9ae227169147/16:9/w_2560%2Cc_limit/GettyImages-688974829.jpg',
                    precio: 105.00,
                    texto: 'Hamburguesa',
                  ),
                  PlatilloPedido(
                    imagen:
                        'https://www.lavanguardia.com/files/og_thumbnail/files/fp/uploads/2021/03/30/6063031b90a87.r_d.1083-871-0.jpeg',
                    precio: 25.00,
                    texto: 'Pizza',
                  ),
                  PlatilloPedido(
                    imagen:
                        'https://quehagodecomerhoy.com/wp-content/uploads/2018/03/Gorditas-de-Frijol.png',
                    precio: 35.00,
                    texto: 'Gorditas',
                  ),
                  PlatilloPedido(
                    imagen:
                        'https://mexico10.org/wp-content/uploads/2021/03/torta-pastor.jpg',
                    precio: 70.00,
                    texto: 'Torta',
                  ),
                  PlatilloPedido(
                    imagen:
                        'https://media.gq.com.mx/photos/5ced746cd09b9ae227169147/16:9/w_2560%2Cc_limit/GettyImages-688974829.jpg',
                    precio: 105.00,
                    texto: 'Hamburguesa',
                  ),
                  PlatilloPedido(
                    imagen:
                        'https://www.lavanguardia.com/files/og_thumbnail/files/fp/uploads/2021/03/30/6063031b90a87.r_d.1083-871-0.jpeg',
                    precio: 25.00,
                    texto: 'Pizza',
                  ),
                  PlatilloPedido(
                    imagen:
                        'https://quehagodecomerhoy.com/wp-content/uploads/2018/03/Gorditas-de-Frijol.png',
                    precio: 35.00,
                    texto: 'Gorditas',
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            alignment: Alignment.bottomRight,
            child: Row(
              children: [
                Container(
                  width: 80,
                  child: Text(
                    'Total:',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  width: 120,
                  child: Text(
                    '\$ 400.00',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text(
                        'Pago realizado',
                        textAlign: TextAlign.center,
                      ),
                      content: const Text(
                        'Pago se ha realizado con exito.',
                        textAlign: TextAlign.center,
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  ),
                  child: Text('Ordenar'),
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: MenuAbajo(),
    );
  }

  Widget _usuario() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0),
      child: Column(
        children: [
          Text(
            'Nombre:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            'Luis Ruiz Martínez',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  Widget _correo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0),
      child: Column(
        children: [
          Text(
            'Correo Electrónico:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            'correoEjemplo@gmail.com',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  Widget _telefono() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0),
      child: Column(
        children: [
          Text(
            'Teléfono:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            '442-125-7168',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

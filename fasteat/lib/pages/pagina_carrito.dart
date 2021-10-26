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
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PlatilloPedido(),
              PlatilloPedido(),
              PlatilloPedido(),
            ],
          ),
        ),
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

import 'package:fasteat/widgets/platillo.dart';
import 'package:flutter/material.dart';

class PaginaPlatillo extends StatelessWidget {
  const PaginaPlatillo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _Body(),
          Container(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {
                //Aqui agrega a carrito la compra
              },
              child: Text('Agregar al Carrito'),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Platillo(),
        ],
      ),
    );
  }
}

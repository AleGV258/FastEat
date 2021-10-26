import 'package:fasteat/widgets/platillo.dart';
import 'package:flutter/material.dart';

class PaginaPlatillo extends StatelessWidget {
  final String nombrePlatillo;
  const PaginaPlatillo({Key? key, required this.nombrePlatillo})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: FloatingActionButton(
          backgroundColor: Color.fromRGBO(255, 255, 255, 0.5),
          child: Icon(Icons.arrow_back_rounded, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          _Body(),
          Container(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text(
                    'Platillo Agregado',
                    textAlign: TextAlign.center,
                  ),
                  content: const Text(
                    'Se agregó el platillo al carrito de compras.',
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
          SizedBox(height: 50.0),
        ],
      ),
    );
  }
}

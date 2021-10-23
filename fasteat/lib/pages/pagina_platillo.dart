import 'package:fasteat/widgets/platillo.dart';
import 'package:flutter/material.dart';

class PaginaPlatillo extends StatelessWidget {
  const PaginaPlatillo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categoria Nombre'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Stack(
        children: [
          _Body(),
          //CardTable(),
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
        children: [Platillo()],
      ),
    );
  }
}

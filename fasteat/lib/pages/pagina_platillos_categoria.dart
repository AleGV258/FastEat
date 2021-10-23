import 'package:fasteat/widgets/platillos_x_categoria.dart';
import 'package:flutter/material.dart';

class PaginaPlatillosXCategoria extends StatelessWidget {
  const PaginaPlatillosXCategoria({Key? key}) : super(key: key);

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
        children: [PlatillosXCategoria()],
      ),
    );
  }
}

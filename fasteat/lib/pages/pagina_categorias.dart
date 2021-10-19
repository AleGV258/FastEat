import 'package:fasteat/widgets/menu_abajo.dart';
import 'package:fasteat/widgets/categorias_comida.dart';
import 'package:flutter/material.dart';

class PaginaCategorias extends StatelessWidget {
  const PaginaCategorias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Clasificación'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Stack(
          children: [
            _Body(),
            //CardTable(),
          ],
        ),
        bottomNavigationBar: MenuAbajo());
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [CategoriasPlatillos()],
      ),
    );
  }
}

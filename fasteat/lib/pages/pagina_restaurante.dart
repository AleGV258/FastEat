import 'package:fasteat/widgets/restaurante.dart';
import 'package:flutter/material.dart';

class PaginaRestaurante extends StatelessWidget {
  const PaginaRestaurante({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _Body(),
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
          Restaurante(),
          SizedBox(height: 50.0),
        ],
      ),
    );
  }
}

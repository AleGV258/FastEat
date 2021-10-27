//import 'dart:html';
import 'package:fasteat/providers/menu_provider.dart';
import 'package:fasteat/widgets/menu_abajo.dart';
import 'package:flutter/material.dart';

class NewFavorito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favoritos'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: _tarjetaFav(),
      bottomNavigationBar: MenuAbajo(),
    );
  }

  Widget _tarjetaFav() {
    return FutureBuilder(
        future: fav.cargarData(),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return ListView(
            padding: EdgeInsets.all(15),
            children: _listaItems(snapshot.data, context),
          );
        });
  }

  List<Widget> _listaItems(List<dynamic>? data, BuildContext context) {
    final List<Widget> opciones = [];
    data?.forEach((op) {
      final widgetTemporal = Card(
        child: Column(children: <Widget>[
          ListTile(
            title: Text(
              op['texto'],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              op['restaurante'],
              style: TextStyle(fontSize: 15),
            ),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(op['imagen']),
              radius: 30,
            ),
          ),
        ]),
      );
      opciones..add(widgetTemporal)..add(Divider());
    });
    return opciones;
  }
}

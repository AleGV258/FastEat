import 'dart:html';
import 'package:fasteat/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class NewFavorito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Home Page')),
      body: _tarjetaFav(),
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
        }
    );
  }

  List<Widget> _listaItems(List<dynamic>? data, BuildContext context) {
    final List<Widget> opciones = [];
    data?.forEach((op) {
      final widgetTemporal = Card(
        child: Column(children: <Widget>[
        ListTile(
          title: Text(op['texto']),
          subtitle: Text(op['restaurante']),
          leading: CircleAvatar(
            backgroundImage: AssetImage(op['imagen']),
          ),
        ),
      ]),
    );
      opciones..add(widgetTemporal)..add(Divider());
    });
    return opciones;
  }
}

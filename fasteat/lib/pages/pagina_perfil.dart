import 'package:fasteat/widgets/menu_abajo.dart';
import 'package:flutter/material.dart';

class PaginaPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20.0),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'http://assets.stickpng.com/thumbs/585e4bcdcb11b227491c3396.png'),
              radius: 90,
            ),
            SizedBox(height: 17.0),
            _usuario(),
            SizedBox(height: 15.0),
            _correo(),
            SizedBox(height: 15.0),
            _telefono(),
            SizedBox(height: 15.0),
            GestureDetector(
                child: Text('',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.orange[700],
                        fontSize: 15)),
                onTap: () {
                  Navigator.of(context).pushNamed('');
                }),
          ],
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
